accessing
defaultMenuItemName
	
	^sourceNode hasExecutionCounter 
		ifTrue: [ 'Remove counter (', self currentCallsCount asString, ')']
	 	ifFalse: [ 'Remove counter' ]