testing
isAboutSelectedItem: aDataSourceItem
	"It can be just last line: #isEqualTo:. 
	But in remote scenario it could lead to few messages to underlying remote objects. 
	It is nice to avoid such interaction.
	So here we first try simplified comparison. And then complete version is used"
	(selectedItems anySatisfy: [ :each | each actualObject == aDataSourceItem actualObject])
		ifTrue: [ ^true ].
	(selectedItems anySatisfy: [ :each | each name = aDataSourceItem name]) 
		ifFalse: [ ^false ].
	^selectedItems anySatisfy: [ :each | each isEqualTo: aDataSourceItem  ]