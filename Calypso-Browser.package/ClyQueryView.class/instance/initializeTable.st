initialization
initializeTable
	table := FTTableMorph new.
	table allowsDeselection: true.
	table beMultipleSelection.
	table beResizable.
	table dragEnabled: true.
	table dropEnabled: true.
	table onAnnouncement: FTSelectionChanged send: #selectionChanged to: self.
	table addColumn: ClyMainTableColumn default.
	table vResizing: #spaceFill.
	table hResizing: #spaceFill.
	self addMorph: table