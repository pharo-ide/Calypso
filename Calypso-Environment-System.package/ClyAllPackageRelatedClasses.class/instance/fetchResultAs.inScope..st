execution
fetchResultAs: aQueryResult inScope: anEnvironmentScope
	| classes |
	classes := OrderedCollection new.
	
	anEnvironmentScope definedClassesDo: [ :each | classes add: each].
	aQueryResult buildOn: classes.
	
	classes := OrderedCollection new.
	anEnvironmentScope extendedClassesDo: [ :each | classes add: each].
	aQueryResult buildOn: classes