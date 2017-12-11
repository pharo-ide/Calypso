opening
browseMethods: methods withTitle: aString
	^self openOn: (ClyConstantMethodQuery named: aString with: methods)