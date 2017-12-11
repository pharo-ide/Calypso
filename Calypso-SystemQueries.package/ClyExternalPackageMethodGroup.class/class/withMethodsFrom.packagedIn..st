instance creation
withMethodsFrom: aClassScope packagedIn: aPackage

	| methodQuery |
	methodQuery := ClyPackageExtensionMethods of: aPackage from: aClassScope.
	
	^ClyExternalPackageMethodGroup named: aPackage name on: methodQuery