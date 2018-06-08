navigation
defaultNavigationScope
	
	^self isScopedModeEnabled 
		ifFalse: [ super defaultNavigationScope ]
		ifTrue: [ packageView query scope]