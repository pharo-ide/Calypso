tests
testVariableGroupsEnumerationForObject

	| groups |
	scope := ClyClassScope of: { Object }.
	
	scope variableGroupsDo: [ :each | result add: each].
	groups := result flatCollect: [ :each | {each type. each depth} ].
	
	self assert: groups equals: {ClyInheritedMethodGroup. 0. ClyClassVariablesMethodGroup. 0}.