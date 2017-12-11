converting
asDesiredSelection

	| itemsCopy |
	itemsCopy := items collect: [ :each | each copy childrenDataSource: nil].
	^ClyDesiredSelection fromRoot: rootDataSource items: itemsCopy.
