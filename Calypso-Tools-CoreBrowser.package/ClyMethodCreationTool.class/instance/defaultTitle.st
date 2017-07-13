initialization
defaultTitle
	| title |
	title := browser metaLevelScope shortName, ' method'.
	browser metaLevelScope == ClyClassSideScope ifTrue: [ 
		^title asText allBold asStringMorph ].
	^title