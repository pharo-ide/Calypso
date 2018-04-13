copying
copyForBrowserStateSnapshot

	^self shallowCopy
		resetStateForSnapshot;
		yourself