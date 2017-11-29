execution
buildResult: aQueryResult
	| packages |
	packages := OrderedCollection new.
	
	scope packagesDo: [ :each | packages add: each].
	
	aQueryResult fillWith: packages