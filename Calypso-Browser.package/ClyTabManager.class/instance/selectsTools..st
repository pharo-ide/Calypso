private
selectsTools: toolsArray
	
	| selectedTools |
	selectedTools := self selectedTools.
	selectedTools size = toolsArray size ifFalse: [ ^false ].
	
	^selectedTools allSatisfy: [ :existingTool | 
		toolsArray anySatisfy: [ :each | existingTool isSimilarTo: each ]]