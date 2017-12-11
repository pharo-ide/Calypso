execution
buildResult: aQueryResult
	| filteredMethods vars |
	vars := variableQuery execute items.
	filteredMethods := OrderedCollection new.
	
	scope methodsDo: [ :each | 
		(self doesMethod: each useAnyOf: vars) ifTrue: [filteredMethods add: each]].
	
	aQueryResult fillWith: filteredMethods