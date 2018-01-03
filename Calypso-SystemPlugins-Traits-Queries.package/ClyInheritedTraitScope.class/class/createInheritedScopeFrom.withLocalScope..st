inherited scope
createInheritedScopeFrom: aClassScope withLocalScope: aLocalScopeClass
	^(aClassScope asScope: ClyMultipleClassRelationScope)
		relationScopeClasses: { ClySuperclassScope. self };
		localScopeClass: aLocalScopeClass 