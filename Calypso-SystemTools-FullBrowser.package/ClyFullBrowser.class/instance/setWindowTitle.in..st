updating
setWindowTitle: aString in: aWindow
	| emphasis |
	super setWindowTitle: aString in: aWindow.
	
	emphasis := metaLevelScope = ClyInstanceSideScope 
		ifTrue: [ TextEmphasis normal ] ifFalse: [ TextEmphasis bold ].
		
	aWindow basicLabel emphasis: emphasis emphasisCode