execution
buildResult: aQueryResult in: aNavigationEnvironment 

	| groups |
	groups := OrderedCollection new.
	
	scope methodGroupsDo: [ :each | groups add: each].
	
	aQueryResult fillWith: groups