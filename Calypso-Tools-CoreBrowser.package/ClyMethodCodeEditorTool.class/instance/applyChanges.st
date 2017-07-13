operations
applyChanges
	| selector methodClass newMethodWasCreated |
	methodClass := self selectClassForNewMethodIfNone: [^false].
	
	selector := methodClass compile: self pendingText classified: editingMethod protocol notifying: textMorph.
	selector ifNil: [^false ].
	newMethodWasCreated := (editingMethod origin == methodClass) not 
		or: [ (editingMethod selector == selector) not ].
	editingMethod := methodClass >> selector.
	context lastSelectedItem actualObject: editingMethod.
	self tagAndPackageEditingMethod: editingMethod.
	newMethodWasCreated ifTrue: [ self removeFromBrowser ].	

	browser selectMethod: editingMethod.	
	^true