updating
newWindowTitle
	| title |
	title := systemQuery description, ' [', self itemCount asString , ']'.
	self systemScope isCurrentImage ifFalse: [ 
		title := title , ' in ', self systemScope printBasis ].
	
	^title