accessing
collectClassGroupProvidersFor: aPackage

	^plugins flatCollect: [ :each | 
		each collectClassGroupProvidersFor: aPackage]