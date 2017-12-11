*Calypso-SystemQueries
metaLevelScope
	^self isInstanceSide ifTrue: [ ClyInstanceSideScope ] ifFalse: [ ClyClassSideScope ]