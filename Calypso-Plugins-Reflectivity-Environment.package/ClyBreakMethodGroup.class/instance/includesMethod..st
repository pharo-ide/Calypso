testing
includesMethod: aMethod
	^aMethod hasBreakpoint or: [ aMethod containsHalt ]