private
spotterForCommandsFor: aStep
	<spotterOrder: 20>

	browser allContextsDo: [ :each | 
		self commandListProcessorForContext: each step: aStep]