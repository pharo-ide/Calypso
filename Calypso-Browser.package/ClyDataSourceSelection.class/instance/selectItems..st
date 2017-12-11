controlling
selectItems: dataSourceItems
	
	| newSelectionIsSame |
	newSelectionIsSame := (dataSourceItems collect: #actualObject as: IdentitySet) = 
		(items collect: #actualObject as: IdentitySet).

	items := dataSourceItems.
	self restoreTableSelectionSilently: newSelectionIsSame.
	self ensureVisibleLastItem