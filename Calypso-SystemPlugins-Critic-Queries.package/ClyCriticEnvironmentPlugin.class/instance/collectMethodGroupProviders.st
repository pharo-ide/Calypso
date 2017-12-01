method groups
collectMethodGroupProviders
	providesMethodGroup ifFalse: [ ^#() ].
	
	^{ClyCriticMethodGroupProvider new}