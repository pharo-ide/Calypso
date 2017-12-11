*Calypso-SystemTools-Core
asCalypsoVariableOf: declarationClass
	"it is variable compatible object. Generally variable objects should have declaring class.
	Then it will be not needed and simplified"
	^ClyClassVariable on: assoc definedIn: declarationClass