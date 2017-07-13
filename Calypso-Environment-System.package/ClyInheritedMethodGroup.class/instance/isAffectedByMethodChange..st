system changes
isAffectedByMethodChange: aMethodAnnouncement

	^classes anySatisfy: [ :eachClass |
		self isClass: eachClass inheritsMethodsAffectedBy: aMethodAnnouncement  ]  