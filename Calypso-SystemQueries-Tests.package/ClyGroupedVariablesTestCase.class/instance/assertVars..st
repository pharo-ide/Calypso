helpers
assertVars: varNames

	| vars i var |
	vars := items 
		select: [ :each | each actualObject isKindOf: ClyRealBrowserItem ].
	self assert: vars size equals: varNames size.
	i := 1.
	varNames do: [ :expectedVar |
		var := vars at: i.
		self assert: var actualObject name equals: expectedVar.
		i := i + 1]