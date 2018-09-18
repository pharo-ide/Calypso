building
buildEditButton
	editButton := IconicButton new
		target: self;
		actionSelector: #openEditor;
		arguments: #();
		labelGraphic: (self iconNamed: #edit);
		color: Color transparent;
		borderWidth: 0