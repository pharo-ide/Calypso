instance creation
newWindowTitle
	^self systemScope isCurrentImage 
		ifTrue: [ 'ProcessBrowser' ]
		ifFalse: [ 'ProcessBrowser' , ' in ', self systemScope printBasis ]