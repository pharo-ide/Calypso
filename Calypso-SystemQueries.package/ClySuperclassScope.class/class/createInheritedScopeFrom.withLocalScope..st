inherited scope
createInheritedScopeFrom: aClassScope withLocalScope: aLocalScopeClass
	^(aClassScope asScope: self)
		localScopeClass: aLocalScopeClass 