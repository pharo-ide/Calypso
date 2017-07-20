testing
isCurrent

	self browser navigationViews with: viewStates do: [:view :state | 
		(state isCurrentStateOf: view) ifFalse: [ ^false]].
	
	^self browser tabManager selectsTools: selectedTabs