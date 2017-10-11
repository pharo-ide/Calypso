*Calypso-SystemTools-QueryBrowser
browseImplementorsOf: aSymbol
	
	self browseQueryResultOf: (ClyMessageImplementors of: {aSymbol})