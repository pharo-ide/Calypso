execution
buildResult: aQueryResult fromScope: anEnvironmentScope 

	| groups |
	groups := OrderedCollection new.
	
	anEnvironmentScope classGroupsDo: [ :each | groups add: each].
	
	aQueryResult fillWith: groups