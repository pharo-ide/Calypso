installing
mouseLeave: evt
	super mouseLeave: evt.
	self currentHand showTemporaryCursor: nil
