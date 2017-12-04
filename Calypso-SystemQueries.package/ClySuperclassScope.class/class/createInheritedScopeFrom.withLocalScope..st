inherited scope
createInheritedScopeFrom: aClassScope withLocalScope: aLocalScopeClass
	^(aClassScope asScope: self)
		localClassScope: aLocalScopeClass 