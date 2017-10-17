converting
withResultContent: contentClass
	| copy |
	copy := self copy.
	copy requiredResult: contentClass.
	^copy