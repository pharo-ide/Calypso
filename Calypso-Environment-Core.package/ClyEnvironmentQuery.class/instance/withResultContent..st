convertion
withResultContent: contentClass
	| copy |
	copy := self copy.
	copy requestedContent: contentClass.
	^copy