running
installCounterInto: selector
	| counter |
	counter := ExecutionCounter installOn: (self class >> selector) ast.
	installedCounters add: counter.
	^counter