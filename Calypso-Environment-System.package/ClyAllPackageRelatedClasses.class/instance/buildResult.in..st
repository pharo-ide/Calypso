execution
buildResult: aQueryResult in: aNavigationEnvironment
	| classes |
	classes := OrderedCollection new.
	
	scope definedClassesDo: [ :each | classes add: each].
	aQueryResult fillWith: classes.
	
	classes := OrderedCollection new.
	scope extendedClassesDo: [ :each | classes add: each].
	aQueryResult fillWith: classes