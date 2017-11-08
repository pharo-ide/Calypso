converting
withScope: aScope
	| copy |
	copy := self copy.
	copy scope: aScope.
	^copy