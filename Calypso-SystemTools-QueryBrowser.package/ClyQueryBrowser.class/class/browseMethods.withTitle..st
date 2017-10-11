opening
browseMethods: methods withTitle: aString
	^self browseQueryResultOf: (ClyConstantMethodQuery named: aString with: methods)