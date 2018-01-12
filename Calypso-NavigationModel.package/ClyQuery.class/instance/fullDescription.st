printing
fullDescription
	
	^self description, ' from ',
		(scope isBasedOnEmptyBasis ifTrue: [ 'empty scope'] ifFalse: [ scope description])