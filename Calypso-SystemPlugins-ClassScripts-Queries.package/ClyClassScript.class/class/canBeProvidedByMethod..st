script detection
canBeProvidedByMethod: aMethod
	"This method just checks that method in general can be used for this kind of script"
	^aMethod origin isClassSide and: [ aMethod numArgs = 0 ]