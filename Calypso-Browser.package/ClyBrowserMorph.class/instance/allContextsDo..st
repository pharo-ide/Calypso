accessing
allContextsDo: aBlock

	self navigationContextsDo: aBlock.
	
	tabManager tools 
		select: [ :each | each isKindOf: ClyTextEditorToolMorph ]
		thenDo: [ :each | aBlock value: each createTextContext ]