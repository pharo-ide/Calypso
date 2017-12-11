operations
restoreNavigationStateOf: aBrowser
	
	aBrowser navigationViews with: viewStates do: [:view :state |
		state applyTo: view]