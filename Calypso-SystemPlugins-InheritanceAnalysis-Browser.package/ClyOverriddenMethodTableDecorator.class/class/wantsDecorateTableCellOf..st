testing
wantsDecorateTableCellOf: aDataSourceItem

	^(aDataSourceItem isMarkedWith: ClyOverridingMethodTag)
		or: [ aDataSourceItem isMarkedWith: ClyOverriddenMethodTag ]