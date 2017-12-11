operations
applyChanges
	| selector methodClass newMethodWasCreated currentMethod |
	methodClass := self selectClassForNewMethodIfNone: [^false].
	selector := methodClass compile: self pendingText classified: editingMethod protocol notifying: textMorph.
	selector ifNil: [^false ].
	newMethodWasCreated := (editingMethod origin == methodClass) not 
		or: [ (editingMethod selector == selector) not ].
	currentMethod := methodClass >> selector.
	self tagAndPackageEditingMethod: currentMethod.
	editingMethod := currentMethod.
	browser selectMethod: editingMethod.
	self update.
	^true