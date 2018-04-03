converting
adoptedForBrowser
	
	requiredResult representsBrowserItems ifTrue: [ ^self ].
	
	^self withResult: requiredResult adoptedForBrowser 