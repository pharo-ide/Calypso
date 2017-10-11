world menu
worldMenuOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'Calypso browser')	
		order: 0;
		help: 'Calypso browser';
		icon: (self iconNamed: #nautilus);
		action: [ self open ]