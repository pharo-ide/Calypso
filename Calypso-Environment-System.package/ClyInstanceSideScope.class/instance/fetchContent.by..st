queries
fetchContent: anEnvironmentContent by: anEnvironmentQuery
	| actualClasses |
	actualClasses := basisObjects collect: [:each | self resolveClass: each].
	
	anEnvironmentQuery fetchContent: anEnvironmentContent fromClasses: actualClasses