execution
buildResult: aQueryResult 

	| groups |
	groups := OrderedCollection new.
	
	scope methodGroupsDo: [:group | groups add: group].
	
	aQueryResult fillWith: groups