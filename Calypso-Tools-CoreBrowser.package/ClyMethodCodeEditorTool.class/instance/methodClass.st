accessing
methodClass

	self belongsToCurrentBrowserContext ifFalse: [ ^editingMethod origin ].
	
	^browser selectClassForEditorOfMethod: editingMethod