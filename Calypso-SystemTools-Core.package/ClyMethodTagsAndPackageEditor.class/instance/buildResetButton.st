building
buildResetButton

	resetButton := IconicButton new
		target: self;
		actionSelector: #resetTagsAndPackage;
		arguments: #();
		labelGraphic: (self iconNamed: #glamorousClose);
		color: Color transparent;
		borderWidth: 0;
		hResizing: #shinkWrap;
		layoutInset: 4@0