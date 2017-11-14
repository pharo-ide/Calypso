system changes
isAffectedByClassChange: aClassAnnouncement
	| affectedClass |
	affectedClass := aClassAnnouncement classAffected.
	affectedClass isTestCase ifFalse: [ ^false ].
	
	^classScope anySatisfy: [ :each | each == affectedClass ]