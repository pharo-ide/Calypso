accessing
findDataSourceSameAs: aDataSource ifNone: noneBlock
	^(self isSameAs: aDataSource) 
		ifTrue: [ ^self ]
		ifFalse: noneBlock
