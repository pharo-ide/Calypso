opening
openOn: aProcessStack

	^self new 
		setUpAvailablePlugins;
		showStack: aProcessStack;
		open