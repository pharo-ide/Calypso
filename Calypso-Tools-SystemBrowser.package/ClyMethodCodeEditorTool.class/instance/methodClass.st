accessing
methodClass

	self belongsToCurrentBrowserContext ifFalse: [ ^editingMethod origin ].
	
	^browser chooseClassForEditorOfMethod: editingMethod