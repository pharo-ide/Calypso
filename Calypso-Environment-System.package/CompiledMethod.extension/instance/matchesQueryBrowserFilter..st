*Calypso-Environment-System
matchesQueryBrowserFilter: aQueryBrowserFilter

	(aQueryBrowserFilter matchesString: self selector) ifTrue: [ ^true ].
	(aQueryBrowserFilter matchesString: self origin name) ifTrue: [ ^true ].
	^aQueryBrowserFilter matchesString: self package name