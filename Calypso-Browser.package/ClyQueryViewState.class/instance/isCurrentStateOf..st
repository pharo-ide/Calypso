testing
isCurrentStateOf: aQueryView
	
	^(aQueryView dataSource isInSameStateAs: dataSource)
		and: [aQueryView selection isSameAs: selection]