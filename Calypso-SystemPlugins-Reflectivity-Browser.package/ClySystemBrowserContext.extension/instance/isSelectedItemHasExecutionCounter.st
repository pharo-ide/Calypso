*Calypso-SystemPlugins-Reflectivity-Browser
isSelectedItemHasExecutionCounter
	^selectedItems anySatisfy: [ :each | 
		each isMarkedWith: ClyMethodWithExecutionCounterTag ]