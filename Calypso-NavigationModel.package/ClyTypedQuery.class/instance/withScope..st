converting
withScope: aScope
	| copy |
	copy := self copy.
	^aScope adoptQuery: copy