operations
restoreBrowserWindow

	windowGroup 
		ifNil: [
			window isInWorld 
				ifTrue: [ window comeToFront]
			 	ifFalse: [window openAsIs ]]
		ifNotNil: [ 
			windowGroup isInWorld 
				ifTrue: [ windowGroup window comeToFront ]
				ifFalse: [ windowGroup window openAsIs ].
			windowGroup activateWindow: window]