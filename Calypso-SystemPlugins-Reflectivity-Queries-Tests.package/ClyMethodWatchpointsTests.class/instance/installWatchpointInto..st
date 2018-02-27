running
installWatchpointInto: selector
	| watchpoint |
	watchpoint := Watchpoint in: (self class >> selector) ast sendNodes last.
	installedWatchpoints add: watchpoint.
	^watchpoint