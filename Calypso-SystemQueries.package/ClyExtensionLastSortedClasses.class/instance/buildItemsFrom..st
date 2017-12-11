building
buildItemsFrom: classes

	| subResult |
	subResult := baseQueryResult prepareNewFor: buildingQuery in: environment.
	subResult buildWith: classes.
	^subResult items collect: [:each | each asCalypsoBrowserItem ]