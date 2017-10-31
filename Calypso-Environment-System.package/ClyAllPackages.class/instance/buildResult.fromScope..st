execution
buildResult: aQueryResult fromScope: anEnvironmentScope
	| packages |
	packages := OrderedCollection new.
	
	anEnvironmentScope packagesDo: [ :each | packages add: each].
	
	aQueryResult fillWith: packages