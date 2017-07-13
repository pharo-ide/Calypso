accessing
menuItemName
	^ menuItemName ifNil: [ command defaultToolbarItemName ]