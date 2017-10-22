*Calypso-Environment-System
matchesQueryBrowserFilter: aQueryBrowserFilter

	(aQueryBrowserFilter matchesString: self name) ifTrue: [ ^true ].
	^aQueryBrowserFilter matchesString: self package name