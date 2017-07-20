operations
restoreNavigationState
	
	browser navigationViews with: viewStates do: [:view :state |
		state applyTo: view]