updating
activateWindow: aWindow
	
	| index |
	(self tabGroup pages includes: aWindow) ifTrue: [ 
		index := self tabGroup pages indexOf: aWindow.
		^self tabGroup selectedPageIndex: index].
	
	self addWindow: aWindow.
	aWindow activate; announceOpened