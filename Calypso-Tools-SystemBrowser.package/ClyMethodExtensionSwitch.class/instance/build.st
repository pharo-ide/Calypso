initialization
build
	
	checkbox := self theme 
		newCheckboxIn: self 
		for: self 
		getSelected: #isActive 
		setSelected: #toggle 
		getEnabled: nil 
		getLabel: #label
		help: 'toggle check box to choose/reset package of method'.
	checkbox
		changeTableLayout;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap.
	self addMorph: checkbox