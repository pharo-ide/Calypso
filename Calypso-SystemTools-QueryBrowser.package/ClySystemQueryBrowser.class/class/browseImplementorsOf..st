opening
browseImplementorsOf: aSymbol
	^self browseQueryResultOf: (ClyMessageImplementors of: { aSymbol })
