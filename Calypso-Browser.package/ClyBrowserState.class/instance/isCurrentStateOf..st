testing
isCurrentStateOf: aBrowser

	aBrowser navigationViews with: viewStates do: [:view :state | 
		(state isCurrentStateOf: view) ifFalse: [ ^false]].
	
	^aBrowser tabManager selectsTools: selectedTabs