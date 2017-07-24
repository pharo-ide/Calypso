operations
restoreNavigationStateOf: aBrowser
	
	aBrowser changeNavigationStateBy: [ 
		
		aBrowser navigationViews with: viewStates do: [:view :state |
			state applyTo: view]
		
	]