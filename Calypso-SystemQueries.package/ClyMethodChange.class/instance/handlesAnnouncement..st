testing
handlesAnnouncement: anAnnouncement

	| newMethod |
	affectedMethod isInstalled ifFalse: [ 
		newMethod := affectedMethod origin 
			localMethodNamed: affectedMethod selector ifAbsent: [nil].
		newMethod ifNotNil: [ affectedMethod := newMethod ]  ].
	
	^anAnnouncement affectsMethod: affectedMethod 