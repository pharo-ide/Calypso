converting
withResult: aQueryResult
	| copy |
	copy := self copy.
	copy requiredResult: aQueryResult.
	^copy