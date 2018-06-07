block generation
rewriteASTToSimulateExecutionInADifferentContext: anAST
	| semanticallyAnalysedMethodAST allUndeclaredVariableNodes allUndeclaredVariableSymbols rewriter rewrittenConditionBlockProducerAST allMessageNodes receiverSuperclassValueNode intermediateAST analysedIntermediateAST rewriter2 |
	"AnAST is the AST of a method returning a block taking a context as its argument named `ThisContext` and whose body is the condition of this conditional breakpoint.
	The goal is to rewrite this AST so that evaluating the block by passing it a context as argument will evaluate its body as it would have been evaluated in the passed context.
	To do this, we rewrite anAST following these three rules:
	1) Rewriting references to variables named 'ThisContext' into context lookups to avoid conflicts with the 'ThisContext' argument of the block.
	For example, a reference to a variable named ThisContext is rewritten into `ThisContext lookupSymbol: #ThisContext`
	2) Replacing all message nodes whose receiver is super with alternative ast replicating the method lookup a message send to super has.
		For example, 'super foo: 1' is rewritten into 'ThisContext receiver perform: #foo withArguments: 1 inSuperclass: ThisContext receiver class superclass'
	3) Rewriting references to undeclared variables into context lookup
		For example, a reference to a variable named flower is rewritten into `ThisContext lookupSymbol: #flower`
	4) Rewriting references to `thisContext` into references to `ThisContext`
	5) Rewriting references to `self` into references to `ThisContext receiver`"
	rewriter := RBParseTreeRewriter new.
	semanticallyAnalysedMethodAST := anAST doSemanticAnalysis. "To find which variables are undefined"
	rewriter replace: ((RBVariableNode named: #ThisContext) name) with: '(ThisContext lookupSymbol: #' , ((RBVariableNode named: #ThisContext) name), ')'.

	allMessageNodes := semanticallyAnalysedMethodAST allChildren select: [:astElem | astElem isMessage].
	receiverSuperclassValueNode := (RBParser parseExpression: 'ThisContext receiver class superclass').
	allMessageNodes do: [ :msgNode |
		(msgNode receiver class = RBSuperNode) ifTrue: [ 
			rewriter 
				replaceTree: msgNode
				withTree: (RBMessageNode 
					receiver: (RBParser parseExpression: 'ThisContext receiver')
					selector: (#perform:withArguments:inSuperclass:)
					arguments: ({
						RBLiteralValueNode value: (msgNode selector).
						RBArrayNode statements: msgNode arguments.
						receiverSuperclassValueNode.
					})
				).
		]
	].

	intermediateAST := rewriter
		executeTree: semanticallyAnalysedMethodAST;
		tree.
	analysedIntermediateAST := intermediateAST doSemanticAnalysis.
	rewriter2 := RBParseTreeRewriter new.
	
	allUndeclaredVariableNodes := (analysedIntermediateAST allChildren) select: [:astElem | astElem isVariable and: [astElem isUndeclared]].
	allUndeclaredVariableSymbols := (allUndeclaredVariableNodes collect: [ :varNode | varNode name ]) asSet asArray.
	allUndeclaredVariableSymbols withIndexDo: [:tempName :index | 
		rewriter2
			replace: tempName with: '(ThisContext lookupSymbol: #' , tempName, ')'
	].

   rewriter2
		replace: 'thisContext' with: 'ThisContext'.
	rewriter2
		replace: 'self' with: 'ThisContext receiver'.

	rewrittenConditionBlockProducerAST := rewriter2
		executeTree: analysedIntermediateAST;
		tree.
	^ rewrittenConditionBlockProducerAST doSemanticAnalysis.