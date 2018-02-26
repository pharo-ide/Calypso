*Calypso-SystemPlugins-Breakpoints-Browser
isSelectedItemHasBreakpoint
	^selectedItems anySatisfy: [ :each | 
		each isMarkedWith: ClyMethodWithBreakpointTag ]