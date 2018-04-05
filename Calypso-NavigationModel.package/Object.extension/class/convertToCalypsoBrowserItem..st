*Calypso-NavigationModel
convertToCalypsoBrowserItem: anObject

	^ClyRealBrowserItem 
		named: (self defaultTitleForCalypsoItem: anObject)
		with: anObject