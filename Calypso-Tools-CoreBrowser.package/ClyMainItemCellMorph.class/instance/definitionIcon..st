accessing
definitionIcon: iconName
	
	| icon |
	icon := self iconNamed: iconName.
	^self definitionMorph: icon asMorph