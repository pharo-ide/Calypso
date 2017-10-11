updating
newWindowTitle
	| newTitle |
	
	packageView selection isEmpty ifTrue: [ ^self systemScope printBasis].	
	
	newTitle := self buildTitleFromSelections.
	self systemScope isCurrentImage ifFalse: [ 
		newTitle := newTitle , ' in ', self systemScope printBasis ].
	
	^newTitle