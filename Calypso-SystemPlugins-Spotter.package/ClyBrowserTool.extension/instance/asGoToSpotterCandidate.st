*Calypso-SystemPlugins-Spotter
asGoToSpotterCandidate

	^ClyGoToSpotterCandidate 
		named: self simpleNameForSpotterMenu
		icon: self defaultIcon
		using: [ self selectAsMainTab; takeKeyboardFocus ]