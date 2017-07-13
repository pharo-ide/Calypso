accessing
collectMethodGroupProvidersFor: classes

	^plugins flatCollect: [ :each | 
		each collectMethodGroupProvidersFor: classes]