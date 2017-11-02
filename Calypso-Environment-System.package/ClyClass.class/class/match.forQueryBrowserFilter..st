testing
match: aClass forQueryBrowserFilter: aQueryBrowserFilter

	(aQueryBrowserFilter matchesString: aClass name) ifTrue: [ ^true ].
	^aQueryBrowserFilter matchesString: aClass package name