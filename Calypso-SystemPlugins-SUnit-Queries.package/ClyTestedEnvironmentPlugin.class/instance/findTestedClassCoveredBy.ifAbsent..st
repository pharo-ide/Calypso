tests lookup
findTestedClassCoveredBy: aTestClass ifAbsent: absentBlock

	| className |
	className := aTestClass instanceSide name.
	
	(className endsWith: 'Tests') ifTrue: [ 
		^environment system 
			classNamed: (className allButLast: 5) asSymbol ifAbsent: absentBlock ].
	(className endsWith: 'Test') ifTrue: [ 
		^environment system 
			classNamed: (className allButLast: 4) asSymbol  ifAbsent: absentBlock ].
	
	^absentBlock value