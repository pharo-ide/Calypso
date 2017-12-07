updating
newWindowTitle
	| title | 
	title := systemQuery description.
	resultView areItemsLoaded 
		ifTrue: [title := title capitalized , ' [' ,  self itemCount asString, ']']
		ifFalse: [title := 'Loading: ', title ].
	
	self systemScope isCurrentImage ifFalse: [ 
		title := title , ' in ', self systemScope description ].
	
	^title