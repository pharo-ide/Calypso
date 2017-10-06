opening
browseSendersOf: aSymbol
	^self browseQueryResultOf: (ClyMessageSenders of: { aSymbol })