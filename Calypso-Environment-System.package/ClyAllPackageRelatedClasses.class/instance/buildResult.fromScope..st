execution
buildResult: aQueryResult fromScope: anEnvironmentScope
	| classes |
	classes := OrderedCollection new.
	
	anEnvironmentScope definedClassesDo: [ :each | classes add: each].
	aQueryResult fillWith: classes.
	
	classes := OrderedCollection new.
	anEnvironmentScope extendedClassesDo: [ :each | classes add: each].
	aQueryResult fillWith: classes