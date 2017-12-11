operations
ignoreNavigationDuring: aBlock
	waitingNewState := false.
	aBlock ensure: [ waitingNewState := true ]