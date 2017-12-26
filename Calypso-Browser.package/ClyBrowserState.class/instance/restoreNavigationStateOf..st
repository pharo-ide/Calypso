operations
restoreNavigationStateOf: aBrowser
	
	aBrowser navigationViews with: viewStates do: [:view :state |
		view ignoreNavigationDuring: [ 
			state applyTo: view]]