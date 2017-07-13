controlling
okToClose
	self hasUnacceptedEdits ifFalse: [ ^true ].
	
	^browser confirmDiscardChanges