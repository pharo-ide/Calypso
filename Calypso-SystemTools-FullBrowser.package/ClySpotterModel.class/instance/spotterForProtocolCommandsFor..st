accessing spotter
spotterForProtocolCommandsFor: aStep
	<spotterOrder: 40>

	self 
		commandListProcessor: 'Protocol' 
		selector: #methodGroupView 
		step: aStep