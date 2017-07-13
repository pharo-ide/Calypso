system changes
isAffectedByMethodChange: aMethodAnnouncement
	^aMethodAnnouncement protocolsAffected anySatisfy: [ :each |
		tag = each ]