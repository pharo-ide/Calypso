settings
defaultShortcutKey: aString
	aString size = 1 ifFalse: [ self error: 'You should provide single character for shortcut' ].
	
	self defaultShortcut: aString first meta