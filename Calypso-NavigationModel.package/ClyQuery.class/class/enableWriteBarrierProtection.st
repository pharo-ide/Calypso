accessing
enableWriteBarrierProtection
	Smalltalk vm supportsWriteBarrier ifFalse: [ self error: 'Vm do not support write barrier' ].
	ShouldBeProtectedByWriteBarrier := true