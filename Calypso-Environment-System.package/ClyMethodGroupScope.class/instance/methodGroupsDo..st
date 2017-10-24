queries
methodGroupsDo: aBlock
	| parentGroup |
	basisObjects ifEmpty: [ ^self ].
	basisObjects size > 1 ifTrue: [ self error: 'Subgroups of multiple method groups are not supported!' ].
	
	parentGroup := basisObjects anyOne.
	parentGroup buildSubgroupItems do: aBlock