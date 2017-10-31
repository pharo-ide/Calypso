presentation
createIcon

	allCount = successCount
		ifTrue: [ ^Smalltalk ui icons iconNamed: #testGreenIcon ].
	errorCount = 0 & (failureCount > 0)
		ifTrue: [ ^Smalltalk ui icons iconNamed: #testYellowIcon ].
	errorCount > 0
		ifTrue: [ ^Smalltalk ui icons iconNamed: #testRedIcon ].
		
	^Smalltalk ui icons iconNamed: #testNotRunIcon.