settings
settingsOn: aBuilder
	<systemsettings>
	(aBuilder setting: #isDefaultHierarchyForVariables)
		parent: #Calypso;
		label: 'Show variables in standard hierarchical order?';
		description: 'If true, FullBrowser will show variables in the order from superclass to subclass';
		target: self.
	(aBuilder setting: #isDefaultHierarchyForMethodVisibility)
		parent: #Calypso;
		label: 'Show method visibility classes in standard hierarchical order?';
		description: 'If true, FullBrowser will show "inherited method" expanded classes in the order from superclass to subclass';
		target: self