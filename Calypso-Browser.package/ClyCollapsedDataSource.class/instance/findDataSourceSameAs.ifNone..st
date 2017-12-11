accessing
findDataSourceSameAs: aDataSource ifNone: noneBlock
	| found |
	(self isSameAs: aDataSource) ifTrue: [ ^self ].
	
	expandedItems do: [ :each | 
		found := each childrenDataSource findDataSourceSameAs: aDataSource ifNone: [nil].
		found ifNotNil: [ ^found ]].
		
	^noneBlock value