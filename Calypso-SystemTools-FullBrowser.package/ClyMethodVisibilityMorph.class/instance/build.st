building
build

	| checkBox |
	checkBox := CheckboxMorph 
		on: self selected: #isMethodsVisible changeSelected: #showInheritedMethods:.
	checkBox
		borderWidth: 0;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap.
	checkBox labelMorph delete.	

	self addMorph: checkBox.
	