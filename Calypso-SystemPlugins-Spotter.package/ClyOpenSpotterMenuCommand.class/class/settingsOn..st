settings
settingsOn: aBuilder
	<systemsettings>
	
	(aBuilder setting: #defaultShortcutKey)
		parent: #Calypso;
		label: 'Default shortcut to open Spotter (input character)';
		description: 'Input single character k to get "k meta" shortcut';
		target: self