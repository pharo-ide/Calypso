contexts
createTextContext
	^self selectedSourceNode
		ifNil: [super createTextContext]
		ifNotNil: [ :astNode | ClySourceCodeContext for: self selectedNode: astNode]