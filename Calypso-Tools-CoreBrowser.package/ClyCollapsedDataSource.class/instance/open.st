controlling
open
	super open.

	expandedItems do: [:each | each childrenDataSource open]