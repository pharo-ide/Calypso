instance creation
of: aContext

	^self new
		definitionMethodItem: (ClyFormattedResultItem named: aContext selector with: aContext method);
		receiverItem: (ClyFormattedResultItem named: aContext receiver class name with: aContext receiver);
		closureItem: (aContext closure ifNotNil: [:c | ClyFormattedResultItem named: c printString with: c]) 