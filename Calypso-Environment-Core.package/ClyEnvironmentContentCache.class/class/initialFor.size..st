instance creation
initialFor: anEnvironmentContent size: cacheSize

	^self new 
		sizeLimit: cacheSize;
		totalContentSize: anEnvironmentContent size