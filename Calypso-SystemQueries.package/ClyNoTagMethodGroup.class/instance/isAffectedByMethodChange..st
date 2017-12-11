system changes
isAffectedByMethodChange: aMethodAnnouncement

	^aMethodAnnouncement protocolsAffected anySatisfy: [ :each |
		self name = each ]