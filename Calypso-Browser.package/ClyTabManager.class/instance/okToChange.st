event handling
okToChange

	(tools anySatisfy: #hasUnacceptedEdits) ifFalse: [ ^true ].
	
	^browser confirmDiscardChanges 