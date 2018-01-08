testing
shouldBeProtectedByWriteBarrier
	^ShouldBeProtectedByWriteBarrier ifNil: [ 
		ShouldBeProtectedByWriteBarrier := Smalltalk vm supportsWriteBarrier]