navigation
changeNavigationStateBy: aBlock

	| state |
	navigationStarted ifTrue: [^aBlock value].
	navigationStarted := true.
	state := self snapshotNavigationState.
	^aBlock ensure: [ 
		navigationStarted := false.
		state isCurrentState ifFalse: [ 
			self recordNavigationState: state.
			self updateWindowTitle.				
			self rebuildAllTools]]