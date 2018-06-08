accessing
description
	self isAppliedToBrowser ifFalse: [ ^'Click to show packages' ].
	
	^browser isScopedModeEnabled 
		ifTrue: [ 'Click to reset scope' ]
		ifFalse: [ 'Click to scope by selected packages' ]