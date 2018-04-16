copying
copyForBrowserStateSnapshotOf: aDataSource

	| copy |
	copy := self asDesiredSelection.
	copy rootDataSource: aDataSource.
	copy items: (items collect: [ :each | each copyForBrowserStateSnapshotOf: aDataSource]).
	^copy	