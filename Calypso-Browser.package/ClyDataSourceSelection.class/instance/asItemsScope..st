converting
asItemsScope: aTypedScope
	| actualItems |
	actualItems := self uniformActualObjects.
	^ aTypedScope ofAll: actualItems in: rootDataSource queryEnvironment