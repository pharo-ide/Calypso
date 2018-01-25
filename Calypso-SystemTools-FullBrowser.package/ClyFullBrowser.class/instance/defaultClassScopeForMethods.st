accessing
defaultClassScopeForMethods

	| selectedClassScope |
	selectedClassScope := self classSelection asItemsScope: metaLevelScope.
	
	^self extendClassScopeForMethods: selectedClassScope
	