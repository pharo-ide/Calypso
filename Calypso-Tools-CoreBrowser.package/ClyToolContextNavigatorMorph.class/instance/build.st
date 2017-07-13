building
build
	| goButton contextLabel |
	contextLabel := ownerTool printContext.
	contextLabel ifEmpty: [ ^self ]. "if ownerTool not defines meaningfull context name we ignore it"
	self addMorphBack: (self iconNamed: #uncommentedClass) asMorph.
	self addMorphBack: contextLabel asMorph.
	goButton := IconicButton new
		target: self;
		actionSelector: #restoreBrowserState;
		arguments: {};
		labelGraphic: (self iconNamed: #forward);
		color: Color transparent;
		helpText: 'Move browser to ', contextLabel;
		borderWidth: 0.
	self addMorphBack: goButton