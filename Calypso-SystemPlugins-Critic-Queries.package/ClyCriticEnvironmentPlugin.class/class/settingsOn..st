settings
settingsOn: aBuilder
	<systemsettings>
	(aBuilder setting: #isEnabled)
		parent: #Calypso;
		label: 'Show critiques method group?';
		description: 'If true, there will be special method group which will analyze all methods of selected classes in the browser. Analysis is performed in the background and should not affect general performance of the system';
		target: self