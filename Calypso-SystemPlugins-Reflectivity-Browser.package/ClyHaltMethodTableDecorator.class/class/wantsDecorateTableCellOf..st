testing
wantsDecorateTableCellOf: aDataSourceItem
	^ (aDataSourceItem isMarkedWith: ClyMethodWithHaltTag) 
			and: [ (aDataSourceItem isMarkedWith: ClyMethodWithBreakpointTag) not ]