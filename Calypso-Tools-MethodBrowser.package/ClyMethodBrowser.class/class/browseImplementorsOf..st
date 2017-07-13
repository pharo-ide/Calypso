opening
browseImplementorsOf: aSymbol
	^self browseMethodsFromQuery: (ClyMessageImplementors of: { aSymbol })
