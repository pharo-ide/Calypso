testing
resolvePropertiesOf: myEnvironmentItem
	super resolvePropertiesOf: myEnvironmentItem.
	
	self isReady ifFalse: [  myEnvironmentItem markWith: ClyBackgroundProcessingTag]