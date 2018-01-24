accessing
allContextsDo: aBlock

	self navigationContextsDo: aBlock.
	
	tabManager tools 
		select: [ :each | each isKindOf: ClyTextEditorTool ]
		thenDo: [ :each | aBlock value: each createTextContext ]