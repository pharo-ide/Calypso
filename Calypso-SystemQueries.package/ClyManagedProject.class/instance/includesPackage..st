testing
includesPackage: systemPackage 
	^self packages anySatisfy: [ :each | each isAboutPackage: systemPackage ]