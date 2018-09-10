*Calypso-SystemPlugins-Spotter
asGoToSpotterCandidate

	^ClyGoToSpotterCandidate 
		target: self
		named: self simpleNameForSpotterMenu
		icon: self defaultIcon
		using: [ self selectAsMainTab; takeKeyboardFocus ]