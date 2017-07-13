commands support
allowSilentlyRemoveMethods: methods whichHaveSenders: sendersCursor

	| singleSender |
	sendersCursor itemCount = 0 ifTrue: [ ^true].
	methods size = 1 & (sendersCursor itemCount = 1) ifFalse: [^false].
	 
	singleSender := sendersCursor currentItem actualObject.
	^singleSender == methods first