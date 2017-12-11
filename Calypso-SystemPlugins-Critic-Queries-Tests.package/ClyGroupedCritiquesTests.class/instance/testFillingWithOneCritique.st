tests
testFillingWithOneCritique
	| method critique group |
	method := ClyClassWithProblemMethods >> #methodWithHalt.
	critique := method critiques anyOne.
	
	queryResult fillWith: { critique }.
	
	self assert: queryResult size equals: 1.
	group := queryResult items first.
	self assert: group class equals: ClyConcreteCritiqueMethodGroup.
	self assert: group name equals: critique rule group asLowercase.
	self assert: group ruleSeverity name equals: critique rule severity