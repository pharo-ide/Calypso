tests lookup
findTestCaseCovering: aClass ifAbsent: absentBlock

	| className |
	className := aClass instanceSide name.
	
	^environment system classNamed: (className , 'Test') asSymbol ifAbsent: [ 
		environment system classNamed: (className , 'Tests') asSymbol ifAbsent: absentBlock ]