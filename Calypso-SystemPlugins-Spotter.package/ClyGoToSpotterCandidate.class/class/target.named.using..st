instance creation
target: aView named: aString using: aBlock
	^self new 
		targetView: aView;
		name: aString;
		actionBlock: aBlock