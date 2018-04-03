converting
adoptedForBrowser
	asyncResult representsBrowserItems ifTrue: [ ^self ].
	
	^self copy
		asyncResult: asyncResult adoptedForBrowser