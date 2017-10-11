testing
isBasedOn: someBasisObject
	^basisObjects anySatisfy: [ :each |
		each calypsoEnvironmentType checkCalypsoItem: each isSameAs: someBasisObject]