testing
isFilterChanged
	"when user filter table in filter field it will reset selection and set new data source.
	But existing selection will points to another original data source 
	which allows detect this event in current fast table logic"
	(selection rootDataSource isSameAs: self dataSource) 
		ifTrue: [ ^false ].
		
	^selection rootDataSource isBasedOnFilter or: [self dataSource isBasedOnFilter]