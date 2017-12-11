controlling
openOn: aQueryView
	super openOn: aQueryView.

	expandedItems do: [:each | each childrenDataSource openOn: aQueryView]