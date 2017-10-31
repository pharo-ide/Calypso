commands support
allowSilentlyRemoveMethods: methods whichHaveSenders: senders

	| singleSender sendersCount |
	sendersCount := senders size.
	sendersCount = 0 ifTrue: [ ^true].
	methods size = 1 & (sendersCount = 1) ifFalse: [^false].
	 
	singleSender := senders itemAt: 1.
	^singleSender == methods first