buttons
expandedButton
	^ IconicButton new
		target: item;
		actionSelector: #collapse;
		arguments: {};
		labelGraphic: Smalltalk ui theme treeExpandedForm;
		color: Color transparent;
		helpText: 'Unexpand Item';
		borderWidth: 0