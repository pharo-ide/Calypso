copying
copyForBrowserStateSnapshot

	| copy |
	copy := self copy.
	copy table: nil; itemsView: nil.
	copy initializeForBrowserStateSpanshot.
	^copy