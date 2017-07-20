testing
isCurrent

	browser navigationViews with: viewStates do: [:view :state | 
		(state isCurrentStateOf: view) ifFalse: [ ^false]].
	
	^browser tabManager selectsTools: selectedTabs