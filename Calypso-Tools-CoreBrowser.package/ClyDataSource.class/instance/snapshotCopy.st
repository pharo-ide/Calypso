copying
snapshotCopy
	| copy |
	copy := self copy.
	copy prepareInternalSnapshot.
	^copy