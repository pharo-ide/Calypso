*Calypso-SystemPlugins-Breakpoints-Browser
isItemWithBreakpointSelected
	^selectedItems anySatisfy: [ :each | 
		each isMarkedWith: ClyMethodWithBreakpointTag ]