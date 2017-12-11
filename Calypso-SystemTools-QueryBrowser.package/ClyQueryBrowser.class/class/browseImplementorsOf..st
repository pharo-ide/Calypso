opening
browseImplementorsOf: aSymbol
	^self openOn: (ClyMessageImplementors of: { aSymbol })
