private
restoreBrowserWindow
	window isInWorld ifFalse: [ 
		"Closed browser window is always cleaned from browser. Look at ClyBrowser>>windowIsClosing"
		window addMorph: self browser frame: (0@0 extent: 1@1).
		window model: self browser].
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