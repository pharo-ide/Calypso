building
buildItemsFrom: classes

	| subResult |
	subResult := baseQueryResult prepareNewFor: buildingQuery in: environment.
	subResult initializeItems.
	subResult fillWith: classes.
	^subResult items collect: [:each | each asCalypsoBrowserItem ]