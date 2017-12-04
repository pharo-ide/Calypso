inherited scope
asInheritedScopeFrom: aClassScope withLocalScope: aLocalScopeClass
	^(aClassScope asScope: self)
		localClassScope: aLocalScopeClass 