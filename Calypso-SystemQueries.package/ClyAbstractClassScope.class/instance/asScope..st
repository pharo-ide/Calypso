converting
asScope: aClassScopeClass

	| newScope |
	newScope := super asScope: aClassScopeClass.
	newScope adoptLocalScopeClassTo: self localScopeClass.
	^newScope