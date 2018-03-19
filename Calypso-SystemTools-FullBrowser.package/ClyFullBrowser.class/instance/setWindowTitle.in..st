updating
setWindowTitle: aString in: aWindow
	| emphasis |
	super setWindowTitle: aString in: aWindow.
	
	aWindow basicLabel ifNotNil: [:label |
		emphasis := metaLevelScope = ClyInstanceSideScope 
			ifTrue: [ TextEmphasis normal ] ifFalse: [ TextEmphasis bold ].
		label emphasis: emphasis emphasisCode]