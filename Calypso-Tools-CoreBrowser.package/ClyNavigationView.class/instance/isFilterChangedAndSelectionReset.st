testing
isFilterChangedAndSelectionReset
	"when user filter table in filter field it will reset selection and set new data source.
	But existing selection will points to another original data source 
	which allows detect this event in current fast table logic"
	selection isEmpty ifTrue: [ ^false ].

	(selection rootDataSource isSameAs: self dataSource) 
		ifTrue: [ ^true ].
		
	^selection rootDataSource isBasedOnFilter or: [self dataSource isBasedOnFilter]