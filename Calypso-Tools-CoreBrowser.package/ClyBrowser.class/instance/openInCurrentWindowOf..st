opening/closing
openInCurrentWindowOf: aBrowser
	| groupWindow myWindow |
	groupWindow := self createWindowGroupFrom: aBrowser window.
	
	myWindow := (SystemWindow labelled: self newWindowTitle) model: self.
	myWindow 
		addMorph: self frame: (0@0 extent: 1@1);
		updatePaneColors.
	groupWindow addWindow: myWindow.
	myWindow activate.
	myWindow announceOpened