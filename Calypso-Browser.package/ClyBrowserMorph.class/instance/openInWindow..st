opening/closing
openInWindow: aWindow
	| groupWindow myWindow |
	groupWindow := self createWindowGroupFrom: aWindow.
	
	myWindow := self buildWindow.
	groupWindow addWindow: myWindow.
	myWindow activate.
	myWindow announceOpened