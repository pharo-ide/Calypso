execution
buildResult: aQueryResult in: aNavigationEnvironment
	| packages |
	packages := OrderedCollection new.
	
	scope packagesDo: [ :each | packages add: each].
	
	aQueryResult fillWith: packages