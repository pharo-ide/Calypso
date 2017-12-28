testing
wantsDecorateTableCellOf: aDataSourceItem
	^(aDataSourceItem isMarkedWith: ClyOverrideTag)
		or: [ aDataSourceItem isMarkedWith: ClyOverriddenTag ]