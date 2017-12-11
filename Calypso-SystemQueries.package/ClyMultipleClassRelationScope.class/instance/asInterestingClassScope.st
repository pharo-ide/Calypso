converting
asInterestingClassScope
	^self copy
		relationScopeClasses: (relationScopeClasses collect: [:each | each asInterestingClassScope])