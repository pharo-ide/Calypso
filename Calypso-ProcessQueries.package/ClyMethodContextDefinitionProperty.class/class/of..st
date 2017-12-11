instance creation
of: aContext

	^self new
		definitionMethodItem: (ClyBrowserItem named: aContext selector with: aContext method);
		receiverItem: (ClyBrowserItem named: aContext receiver class name with: aContext receiver);
		closureItem: (aContext closure ifNotNil: [:c | ClyBrowserItem named: c printString with: c]) 