execution
buildResult: aQueryResult 

	| groups |
	groups := OrderedCollection new.
	
	scope classGroupsDo: [ :each | groups add: each].
	
	aQueryResult fillWith: groups