*Calypso-Tools-CoreBrowser
createTableCellButtonWith: anIcon using: aCommandActivator

	^IconicButton new
		target: aCommandActivator;
		actionSelector: #executeCommand;
		color: Color transparent;
		helpText: self defaultMenuItemName;
		borderWidth: 0;
		labelGraphic: anIcon;
		extent: anIcon extent