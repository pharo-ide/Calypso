controlling
showCritiques
	criticView owner ifNotNil: [ ^self ].
	
	originalToolPanel layoutFrame bottomFraction: 0.8.
	browserTool addMorph: criticView fullFrame: ((0@0.8 corner: 1@1) asLayoutFrame).
	browserTool addPaneSplitters