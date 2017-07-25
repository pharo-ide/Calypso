opening
browseMethods: methods withTitle: aString
	^self browseMethodsFromQuery: (ClyConstantMethodQuery named: aString with: methods)