testing
doesMethod: aMethod useAnyOf: vars
	
	^vars anySatisfy: [ :each |
		self doesMethod: aMethod useVar: each]