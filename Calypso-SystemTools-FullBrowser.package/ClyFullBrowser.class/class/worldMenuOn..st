world menu
worldMenuOn: aBuilder 
	<worldMenu> 
	| isDefaultBrowser target targetName |
	isDefaultBrowser := Smalltalk tools browser = self.
	(isDefaultBrowser and: [ self environment hasClassNamed: #Nautilus ])
		ifTrue: [ 
			target := self environment classNamed: #Nautilus.
			targetName := target name ]
		ifFalse: [ 
			target := self.
			targetName := 'Calypso' ].
	(aBuilder item: (targetName, ' browser') asSymbol)	
		order: 0.5;
		help: targetName, ' browser';
		icon: (self iconNamed: #nautilus);
		action: [ target open ]