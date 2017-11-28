*Calypso-SystemTools-QueryBrowser
browseImplementorsOf: aSymbol
	
	self browseQuery: (ClyMessageImplementors of: {aSymbol})