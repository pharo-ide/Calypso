execution
buildResult: aQueryResult fromScope: anEnvironmentScope 

	| groups |
	groups := OrderedCollection new.
	
	anEnvironmentScope methodGroupsDo: [ :each | groups add: each].
	
	aQueryResult fillWith: groups