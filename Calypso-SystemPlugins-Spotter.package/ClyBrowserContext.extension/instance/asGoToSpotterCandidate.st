*Calypso-SystemPlugins-Spotter
asGoToSpotterCandidate
	^ClyGoToSpotterCandidate 
		named: self simpleNameForSpotterMenu
		icon: self iconForSpotterMenu
		using: [ self activeQueryView takeKeyboardFocus ]