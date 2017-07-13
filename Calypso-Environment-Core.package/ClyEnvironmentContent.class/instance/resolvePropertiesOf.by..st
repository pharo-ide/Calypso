queries
resolvePropertiesOf: anEnvironmentItem by: anEnvironmentPlugin
	| itemScope |
	itemScope := anEnvironmentItem definesScope
		ifTrue: [ anEnvironmentItem scope ]
		ifFalse: [ self itemScope ].
		
	itemScope resolvePropertiesOf: anEnvironmentItem by: anEnvironmentPlugin