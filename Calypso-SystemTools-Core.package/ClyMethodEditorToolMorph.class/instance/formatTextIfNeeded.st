building
formatTextIfNeeded
	RBProgramNode formatterClass formatAsYouReadPolicy ifFalse: [ ^self].
	
	textMorph formatSourceCode. 
	textModel clearUserEdits