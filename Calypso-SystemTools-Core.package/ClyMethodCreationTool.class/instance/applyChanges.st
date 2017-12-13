operations
applyChanges
	| newMethod selector selectedClass |
	selectedClass := self selectClassForNewMethodIfNone: [^false].
	
	selector := selectedClass compile: self pendingText asString notifying: textMorph.
	selector ifNil: [ ^false ].
	
	newMethod := selectedClass >> selector.
	methodTags ifEmpty: [ 
		MethodClassifier classify: newMethod.
		methodTags := newMethod tags ].
	self tagAndPackageEditingMethod: newMethod.
	
	self removeFromBrowser.
	browser selectMethod: newMethod.
	^true