updating
newWindowTitle
	| newTitle |
	
	packageView selection isEmpty ifTrue: [ ^self systemScope description].	
	
	newTitle := self buildTitleFromSelections.
	self systemScope isCurrentImage ifFalse: [ 
		newTitle := newTitle , ' in ', self systemScope description ].
	
	^newTitle