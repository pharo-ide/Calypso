initialization
defaultTitle
	| title |
	title := browser metaLevelScope defaultName capitalized, ' method'.
	browser metaLevelScope == ClyClassSideScope ifTrue: [ 
		^title asText allBold asStringMorph ].
	^title