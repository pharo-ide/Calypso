accessing
childrenNamed: aString 
	^self children 
		detect: [ :each | each name = aString ] 
		ifNone: [ ClyBrowserItemChildren named: aString query: ClyUnknownQuery instance ]