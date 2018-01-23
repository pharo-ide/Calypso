*Calypso-Browser
createTableCellButtonUsing: aCommandActivator

	| icon |
	icon := self tableCellIcon.
	
	^self createTableCellButtonWith: icon using: aCommandActivator.
		