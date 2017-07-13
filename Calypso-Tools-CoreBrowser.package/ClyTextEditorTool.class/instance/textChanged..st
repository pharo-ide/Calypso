events handling
textChanged: aTextChanged

	changesCancelRequested ifTrue: [ 
		"user cancel changes and now text morph shows original text model".
		changesCancelRequested := false.
		^self changesCancelled ].
	
	self updateDirtyState