instance creation
withMethodsFrom: aClassScope packagedIn: aPackage

	| methodQuery |
	methodQuery := ClyPackageExtensionMethods of: aPackage from: aClassScope.
	
	"Priority is the value to be greater than all extensions group 
	in case when they are in same list (when extended class is selected)"
	^self named: aPackage name priority: 8.9 on: methodQuery