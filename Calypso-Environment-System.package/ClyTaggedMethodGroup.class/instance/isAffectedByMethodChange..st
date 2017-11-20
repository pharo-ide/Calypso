system changes
isAffectedByMethodChange: aMethodAnnouncement
	^aMethodAnnouncement protocolsAffected anySatisfy: [ :each |
		self tag = each ]