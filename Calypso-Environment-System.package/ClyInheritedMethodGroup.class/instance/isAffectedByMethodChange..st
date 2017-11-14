system changes
isAffectedByMethodChange: aMethodAnnouncement

	^classScope anySatisfy: [ :eachClass |
		self isClass: eachClass inheritsMethodsAffectedBy: aMethodAnnouncement  ]  