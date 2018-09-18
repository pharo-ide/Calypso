installing
mouseEnter: evt
	super mouseEnter: evt.
	self currentHand showTemporaryCursor: Cursor webLink.
