*Calypso-SystemPlugins-Spotter
asGoToSpotterCandidate
	^ClyGoToSpotterCandidate 
		target: self activeQueryView
		named: self simpleNameForSpotterMenu
		icon: self iconForSpotterMenu
		using: [ self activeQueryView takeKeyboardFocus ]