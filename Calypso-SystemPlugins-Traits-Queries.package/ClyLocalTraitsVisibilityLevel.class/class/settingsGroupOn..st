settings
settingsGroupOn: aBuilder
	<systemsettings>
	(aBuilder setting: #isDefault)
		parent: #Calypso;
		label: 'Show inherited trait methods by default?';
		description: 'If false, trait methods will be hidden as superclass methods';
		target: self
		