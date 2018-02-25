*Calypso-Browser
decorateToolbarItem: aBrowserButton

	self description ifNotNil: [ :d | 
		aBrowserButton setBalloonText: d ].
	
	self defaultMenuIcon ifNotNil: [:icon |
		aBrowserButton addIcon: icon asMorph]