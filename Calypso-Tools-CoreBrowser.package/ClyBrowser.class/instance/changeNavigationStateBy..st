navigation
changeNavigationStateBy: aBlock

	| state navigationFailed |
	navigationStarted ifTrue: [^aBlock value].
	navigationStarted := true.
	navigationFailed := false.
	state := self snapshotNavigationState.
	^[
		aBlock on: Error do: [:err | 
			navigationFailed := true. "this flag prevents any UI update in case of error"
			err pass]
	] ensure: [ 
		navigationStarted := false.
		navigationFailed | (state isCurrentStateOf: self) ifFalse: [ 
			self recordNavigationState: state.
			self updateWindowTitle.				
			self rebuildAllTools]]