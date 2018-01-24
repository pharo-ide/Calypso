private
commandListProcessorForContext: aContext step: aStep
	aStep listProcessor
		title: aContext simpleNameForSpotterMenu;
		allCandidates: [ self collectCommandCandidatesInContext: aContext ];
		itemName: #menuItemName;
		itemIcon: #menuItemIcon;
		candidatesLimit: 5;
		filter: GTFilterSubstring;
		actLogic: [ :activator :step | 
			step exit.
			activator executeCommand ]