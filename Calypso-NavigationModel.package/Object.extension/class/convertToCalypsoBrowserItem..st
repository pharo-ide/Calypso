*Calypso-NavigationModel
convertToCalypsoBrowserItem: anObject

	^ClyRealBrowserItem 
		of: anObject
		named: (self defaultTitleForCalypsoItem: anObject)