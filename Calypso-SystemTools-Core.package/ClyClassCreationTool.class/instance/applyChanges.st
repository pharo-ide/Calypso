operations
applyChanges
	| newClass |
	newClass := browser compileANewClassFrom: self pendingText asString notifying: textMorph startingFrom: nil.
	newClass ifNil: [ ^false].
	
	self removeFromBrowser.
	browser selectClass: newClass.
	^true