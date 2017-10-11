updating
newWindowTitle
	| title |
	title := systemQuery description, ' [', self numberOfItems asString , ']'.
	self systemScope isCurrentImage ifFalse: [ 
		title := title , ' in ', self systemScope printBasis ].
	
	^title