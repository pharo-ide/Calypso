execution
notifyUserAboutResults: testResult with: message

	| color |	
	color := Color gray.
	testResult hasPassed
		ifTrue: [ color := Color green ].
	testResult hasFailures
		ifTrue: [ color := Color yellow ].
	testResult hasErrors
		ifTrue: [ color := Color red ].
		
	GrowlMorph 
		openWithLabel: message
		contents: testResult printString
		backgroundColor: color
		labelColor: Color black