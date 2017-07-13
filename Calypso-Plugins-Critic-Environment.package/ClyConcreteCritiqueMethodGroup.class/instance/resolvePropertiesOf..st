items resolving
resolvePropertiesOf: myEnvironmentItem
	super resolvePropertiesOf: myEnvironmentItem.
	
	myEnvironmentItem addProperty: ruleSeverity