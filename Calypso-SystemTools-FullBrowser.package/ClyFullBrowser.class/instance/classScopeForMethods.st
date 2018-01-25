accessing
classScopeForMethods
	| currentClassScope |
	currentClassScope := methodGroupQuery scope asScope: metaLevelScope.
	
	^self extendClassScopeForMethods: currentClassScope