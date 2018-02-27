*Calypso-SystemPlugins-Reflectivity-Browser
isSelectedItemHasBreakpoint
	^selectedItems anySatisfy: [ :each | 
		each isMarkedWith: ClyMethodWithBreakpointTag ]