testing
isBasedOn: someBasisObject
	^basisObjects anySatisfy: [ :each |
		self class checkBasisObject: each isSameAs: someBasisObject]