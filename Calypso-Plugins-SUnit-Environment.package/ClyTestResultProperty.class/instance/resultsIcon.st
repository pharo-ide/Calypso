presentation
resultsIcon

	allCount = successesCount
		ifTrue: [ ^Smalltalk ui icons iconNamed: #testGreenIcon ].
	errorsCount = 0 & (failuresCount > 0)
		ifTrue: [ ^Smalltalk ui icons iconNamed: #testYellowIcon ].
	errorsCount > 0
		ifTrue: [ ^Smalltalk ui icons iconNamed: #testRedIcon ].
		
	^Smalltalk ui icons iconNamed: #testNotRunIcon.