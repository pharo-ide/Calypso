Extension { #name : 'ClyClassEditorToolMorph' }

{ #category : '*Calypso-SystemTools-Debugger' }
ClyClassEditorToolMorph >> attachToSystem [
	browser system when: (ClyClassChange of: editingClass) send: #triggerUpdate to: self
]
