opening
browseSendersOf: aSymbol
	^self browseMethodsFromQuery: (ClyMessageSenders of: { aSymbol })