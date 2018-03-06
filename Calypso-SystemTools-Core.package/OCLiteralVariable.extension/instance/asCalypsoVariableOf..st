*Calypso-SystemTools-Core
asCalypsoVariableOf: declarationClass
	"it is variable compatible object. Generally variable objects should have declaring class.
	Then it will be not needed and simplified"
	self isGlobalVariable ifTrue: [ ^ClyGlobalVariable on: assoc ]. 
	
	^ClyClassVariable on: assoc definedIn: scope getClass