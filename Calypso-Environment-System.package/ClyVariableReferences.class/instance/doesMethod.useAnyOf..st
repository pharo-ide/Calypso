testing
doesMethod: aMethod useAnyOf: vars
	
	^vars anySatisfy: [ :each |
		self isMethod: aMethod referencedVar: each]