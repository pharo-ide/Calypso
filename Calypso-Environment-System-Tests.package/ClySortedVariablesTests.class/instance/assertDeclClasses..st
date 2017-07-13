helpers
assertDeclClasses: classes

	| vars i var |
	vars := items 
		select: [ :each | each actualObject isKindOf: ClyVariableMethodGroup ].
	self assert: vars size equals: classes size.
	i := 1.
	classes do: [ :expectedClass |
		var := vars at: i.
		self assert: var actualObject declarationClass equals: expectedClass.
		i := i + 1]