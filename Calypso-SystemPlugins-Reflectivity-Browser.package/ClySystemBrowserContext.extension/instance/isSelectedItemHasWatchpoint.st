*Calypso-SystemPlugins-Reflectivity-Browser
isSelectedItemHasWatchpoint
	^selectedItems anySatisfy: [ :each | 
		each isMarkedWith: ClyMethodWithWatchpointTag ]