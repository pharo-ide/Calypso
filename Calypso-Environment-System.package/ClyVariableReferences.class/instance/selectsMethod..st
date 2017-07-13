testing
selectsMethod: aMethod
	
	^variables anySatisfy: [ :each |
		self isMethod: aMethod referencedVar: each  ]