building
build

	| checkBox |
	checkBox := CheckboxMorph 
		on: self selected: #isMethodsVisible changeSelected: #showInheritedMethods:.
	checkBox
		borderWidth: 0;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap.
	label
		ifNil: [ checkBox labelMorph delete ] 
		ifNotNil: [ checkBox label: label.
			checkBox labelMorph comeToFront ].
	self addMorph: checkBox.
	