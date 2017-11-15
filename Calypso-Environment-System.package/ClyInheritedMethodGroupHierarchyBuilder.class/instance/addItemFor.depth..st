building
addItemFor: aClass depth: hierarchyDepth

	| group item |
	group := ClyVisibilityMethodGroup forScope: rootClasses toShow: aClass.
	item := group asCalypsoBrowserItem.
	item depth: hierarchyDepth.
	items add: item
	