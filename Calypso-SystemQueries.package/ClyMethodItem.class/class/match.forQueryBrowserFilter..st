testing
match: aMethod forQueryBrowserFilter: aQueryBrowserFilter

	(aQueryBrowserFilter matchesString: aMethod selector) ifTrue: [ ^true ].
	(aQueryBrowserFilter matchesString: aMethod origin name) ifTrue: [ ^true ].
	^aQueryBrowserFilter matchesString: aMethod package name