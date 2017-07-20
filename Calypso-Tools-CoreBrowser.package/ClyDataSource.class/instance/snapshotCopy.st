copying
snapshotCopy
	| copy |
	copy := self copy.
	copy table: nil; itemsView: nil.
	copy prepareInternalSnapshot.
	^copy