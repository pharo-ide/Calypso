accessing
collectPackageGroupProvidersFor: aProject

	^plugins flatCollect: [ :each | 
		each collectPackageGroupProvidersFor: aProject]