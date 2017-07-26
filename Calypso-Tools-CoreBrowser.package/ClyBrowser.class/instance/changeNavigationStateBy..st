navigation
changeNavigationStateBy: aBlock

	| state |
	navigationStarted ifTrue: [^aBlock value].
	navigationStarted := true.
	state := self snapshotNavigationState.
	[aBlock value.
	(state isCurrentStateOf: self) ifFalse: [ 
		self recordNavigationState: state.
		self updateWindowTitle.				
		self rebuildAllTools]
	] ensure: [ navigationStarted := false]