accessing
defaultShortcut
	^ defaultShortcut ifNil: [ defaultShortcut := $/ meta]