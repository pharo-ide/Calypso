instance creation
of: aContext

	^self new
		definitionMethodItem: (ClyRealBrowserItem named: aContext selector with: aContext method);
		receiverItem: (ClyRealBrowserItem named: aContext receiver class name with: aContext receiver);
		closureItem: (aContext closure ifNotNil: [:c | ClyRealBrowserItem named: c printString with: c]) 