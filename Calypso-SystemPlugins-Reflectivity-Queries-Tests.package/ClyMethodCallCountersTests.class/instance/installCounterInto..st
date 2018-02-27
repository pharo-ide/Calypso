running
installCounterInto: selector
	| counter |
	counter := ExecutionCounter installOn: (self class >> selector) ast sendNodes last.
	installedCounters add: counter.
	^counter