private
restoreBrowserWindow
	| newBrowser |
	window isInWorld ifFalse: [ 
		"Closed browser window is always cleaned from browser. Look at ClyBrowser>>windowIsClosing"
		newBrowser := self createBrowser.
		window addMorph: newBrowser frame: (0@0 extent: 1@1).
		window model: newBrowser.
		browserState applyTo: newBrowser].
	windowGroup 
		ifNil: [
			window isInWorld 
				ifTrue: [ window comeToFront; activate]
			 	ifFalse: [window openAsIs ]]
		ifNotNil: [ 
			windowGroup isInWorld 
				ifTrue: [ windowGroup window comeToFront ]
				ifFalse: [ windowGroup window openAsIs ].
			windowGroup activateWindow: window]