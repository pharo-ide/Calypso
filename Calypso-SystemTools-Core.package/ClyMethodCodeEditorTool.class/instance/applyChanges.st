operations
applyChanges
	| selector methodClass currentMethod |
	methodClass := self chooseClassForNewMethodIfNone: [^false].
	selector := methodClass compile: self pendingText classified: editingMethod protocol notifying: textMorph.
	selector ifNil: [^false ].
	currentMethod := methodClass >> selector.
	self tagAndPackageEditingMethod: currentMethod.
	self switchToMethod: currentMethod.
	^true