*Calypso-Tools-MethodBrowser
browseImplementorsOf: aSymbol
	
	self browseMethodsFromQuery: (ClyMessageImplementors of: {aSymbol})