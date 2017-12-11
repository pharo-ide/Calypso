decoration
createCriticView

	criticView := ClyQueryView for: self.
	criticView 
		name: 'critiques table';
		hResizing: #spaceFill;
		vResizing: #rigid;
		borderWidth: 4;
		borderColor: browserTool containerTab backgroundColor.
	criticView height: 50