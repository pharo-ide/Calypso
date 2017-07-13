system changes
isAffectedByClassChange: aClassAnnouncement
	| affectedClass |
	affectedClass := aClassAnnouncement classAffected.
	affectedClass isTestCase ifFalse: [ ^false ].
	
	^classes anySatisfy: [ :each | each == affectedClass ]