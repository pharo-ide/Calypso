execution
buildResult: aQueryResult in: aNavigationEnvironment 

	| groups |
	groups := OrderedCollection new.
	
	scope classGroupsDo: [ :each | groups add: each].
	
	aQueryResult fillWith: groups