operations
applyChanges
	| newClass |
	newClass := browser compileANewClassFrom: self pendingText asString notifying: textMorph startingFrom: editingClass.
	newClass ifNil: [ ^false ].
	
	editingClass == newClass ifFalse: [ 
		self removeFromBrowser].
	browser selectClass: newClass.
	^true
	