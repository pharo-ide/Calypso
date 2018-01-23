accessing spotter
spotterForPanelFor: aStep
	<spotterOrder: 10>

	aStep listProcessor
		title: 'Go to';
		allCandidates: [ self collectGoToCandidates ];
		itemName: #key;
		candidatesLimit: 10;
		filter: GTFilterSubstring;
		actLogic: [ :assoc :step | 
			step exit. 
			assoc value value ]