settings
settingsGroupOn: aBuilder
	<systemsettings>
	(aBuilder group: #codeBrowsing)
		with:
				[ (aBuilder group: #Calypso)
				label: 'Calypso Browser';
				parent: #codeBrowsing;
				description: 'Settings related to the browser']