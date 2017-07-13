decoration
wantsDecorateTableCellOf: aDataSourceItem

	| version |
	version := aDataSourceItem getProperty: ClyPackageVersionProperty ifAbsent: [ ^false].
	^version isModified