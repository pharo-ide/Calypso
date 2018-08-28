initialization
initializeToolsPanel
	toolbar := ClyToolbarMorph of: self.
	tabManager := ClyTabManager of: self.
	
	toolPanel := PanelMorph new.
	toolPanel name: 'tools panel'. 
	toolPanel 
		changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		listDirection: #topToBottom.
	self addMorph: toolPanel fullFrame: ((0.0 @ 0.5 corner: 1.0 @ 1.0) asLayoutFrame topOffset: toolbar height negated).

	toolPanel addMorphBack: toolbar.
	toolPanel addMorphBack: tabManager tabMorph