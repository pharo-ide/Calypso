*Calypso-Browser
decorateToolbarItem: aBrowserToolbarItem

	self description ifNotNil: [ :d | 
		aBrowserToolbarItem setBalloonText: d ].
	
	self defaultMenuIcon ifNotNil: [:icon |
		aBrowserToolbarItem addIcon: icon asMorph]