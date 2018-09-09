building
build
	
	checkbox := CheckboxMorph 
		on: self selected: #usesSlotBasedDefinition changeSelected: #toggle.
	checkbox
		getLabelSelector: #definitionTypeLabel;
		labelClickable: true;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		setBalloonText:	'You can switch between old and new class definition. New definition is based on slots'.
	self addMorph: checkbox