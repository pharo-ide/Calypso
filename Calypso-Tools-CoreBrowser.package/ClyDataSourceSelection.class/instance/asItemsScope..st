converting
asItemsScope: aTypedScope
	| actualItems |
	actualItems := self uniformActualObjects.
	
	^aTypedScope of: actualItems in: rootDataSource queryEnvironment