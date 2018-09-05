controlling
whenReadyDo: aBlock

	containerTab waitReadyMorphFor: 10 seconds. "There is no other way to ensure async tab is ready"
	aBlock value: self