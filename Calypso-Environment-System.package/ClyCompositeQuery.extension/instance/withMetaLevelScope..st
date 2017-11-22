*Calypso-Environment-System
withMetaLevelScope: aScopeClass 
	| newSubqueries |
	newSubqueries := subqueries collect: [ :each | 
		each withMetaLevelScope: aScopeClass ].
	^ClyCompositeQuery with: newSubqueries as: requiredResult