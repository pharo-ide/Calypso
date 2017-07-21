operations
restoreNavigationState
	
	self browser changeNavigationStateBy: [ 
		
		self browser navigationViews with: viewStates do: [:view :state |
			state applyTo: view]
		
	]