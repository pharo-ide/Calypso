queries
fetchResultOf: aQuery as: aQueryResult
	| actualClasses |
	actualClasses := basisObjects collect: [:each | self resolveClass: each].
	
	aQuery fetchResultAs: aQueryResult fromClasses: actualClasses