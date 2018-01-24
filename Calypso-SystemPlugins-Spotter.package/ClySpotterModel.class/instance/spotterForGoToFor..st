accessing spotter
spotterForGoToFor: aStep
	<spotterOrder: 10>

	aStep listProcessor
		title: 'Go to';
		allCandidates: [ self collectGoToCandidates ];
		itemName: #name;
		itemIcon: #icon;
		candidatesLimit: 10;
		filter: GTFilterSubstring;
		actLogic: [ :assoc :step | 
			step exit. 
			assoc activate ]