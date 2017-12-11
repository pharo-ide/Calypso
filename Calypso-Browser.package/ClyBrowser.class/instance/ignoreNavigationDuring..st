navigation
ignoreNavigationDuring: aBlock

	navigationStarted ifTrue: [^aBlock value].
	navigationStarted := true.
	aBlock ensure: [ navigationStarted := false ]