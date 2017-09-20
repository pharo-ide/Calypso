opening
openOnMethod: aMethod

	| browser |
	browser := self open.
	browser selectMethod: aMethod.
	^browser