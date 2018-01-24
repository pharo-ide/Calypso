instance creation
named: aString using: aBlock
	^self new 
		name: aString;
		actionBlock: aBlock