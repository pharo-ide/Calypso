accessing
description
	^browser isScopedModeEnabled 
		ifTrue: [ 'Click to reset scope' ]
		ifFalse: [ 'Click to show packages' ]