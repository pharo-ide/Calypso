updating
newWindowTitle
	| title |
	title := methodQuery description, ' [', self numberOfMethods asString , ']'.
	self systemScope isCurrentImage ifFalse: [ 
		title := title , ' in ', self systemScope printBasis ].
	
	^title