operations
restoreNavigationState
	
	self browser navigationViews with: viewStates do: [:view :state |
		state applyTo: view]