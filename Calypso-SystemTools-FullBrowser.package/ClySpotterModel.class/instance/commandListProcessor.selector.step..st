private
commandListProcessor: aString selector: aSelector step: aStep
	aStep listProcessor
		title: aString;
		allCandidates: [ self collectCommandCandidates: aSelector ];
		itemName: #menuItemName;
		itemIcon: #menuItemIcon;
		candidatesLimit: 5;
		filter: GTFilterSubstring;
		actLogic: [ :activator :step | 
			step exit.
			activator executeCommand ]