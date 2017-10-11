*Calypso-Environment-System
matchesQueryResultFilter: aQueryResultFilter

	(aQueryResultFilter matchesString: self selector) ifTrue: [ ^true ].
	(aQueryResultFilter matchesString: self origin name) ifTrue: [ ^true ].
	^aQueryResultFilter matchesString: self package name