testing
selectsMethod: aMethod
	^aMethod hasBreakpoint or: [ aMethod containsHalt ]