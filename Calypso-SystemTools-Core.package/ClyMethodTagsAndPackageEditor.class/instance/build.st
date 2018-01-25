building
build
	self buildLabel.
	self addMorph: label.
	
	self buildEditButton.
	self addMorph: editButton.
	
	self buildExtensionCheckBoxButton.
	self addMorphBack: extensionCheckbox.
	
	self update