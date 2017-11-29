*Calypso-Browser
createCellFor: aDataSourceItem in: aClyNullItemsView 
	| cell |
	cell := ClyMainItemCellMorph on: aDataSourceItem.
	cell nameMorph contents: aDataSourceItem name.
	cell build.
	^cell