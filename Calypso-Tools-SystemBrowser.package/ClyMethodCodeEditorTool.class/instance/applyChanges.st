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
	
	browser selectMethod: currentMethod.
	newMethodWasCreated & (browser isMethodSelected: currentMethod)
		ifTrue: [ self removeFromBrowser. browser tabManager selectMainTool ]
		ifFalse: [ self editingMethod: currentMethod].
	^true