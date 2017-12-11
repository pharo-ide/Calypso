accessing
addExtraIcon: iconName
	
	| icon |
	icon := self iconNamed: iconName.
	^self addExtraTool: icon asMorph