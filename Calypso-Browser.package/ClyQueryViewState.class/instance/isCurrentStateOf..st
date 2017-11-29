testing
isCurrentStateOf: aNavigationView
	
	^(aNavigationView dataSource isInSameStateAs: dataSource)
		and: [aNavigationView selection isSameAs: selection]