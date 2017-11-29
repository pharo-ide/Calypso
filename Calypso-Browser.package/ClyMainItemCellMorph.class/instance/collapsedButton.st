buttons
collapsedButton
	^ IconicButton new
		target: item;
		actionSelector: #expand;
		arguments: {};
		labelGraphic: Smalltalk ui theme treeUnexpandedForm;
		color: Color transparent;
		helpText: 'Expand Item';
		borderWidth: 0