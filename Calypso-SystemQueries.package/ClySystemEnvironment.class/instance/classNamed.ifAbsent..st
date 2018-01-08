class management
classNamed: aString ifAbsent: aBlockClosure 
	^globals at: aString ifAbsent: aBlockClosure