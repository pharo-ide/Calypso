instance creation
of: aContext

	^self new
		definitionMethodItem: (ClyRealBrowserItem of: aContext method named: aContext selector );
		receiverItem: (ClyRealBrowserItem of: aContext receiver named: aContext receiver class name);
		closureItem: (aContext closure ifNotNil: [:c | ClyRealBrowserItem of: c named: c printString]) 