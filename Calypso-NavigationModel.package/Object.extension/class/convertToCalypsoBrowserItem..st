*Calypso-NavigationModel
convertToCalypsoBrowserItem: anObject

	^ClyBrowserItem 
		named: (self defaultTitleForCalypsoItem: anObject)
		with: anObject