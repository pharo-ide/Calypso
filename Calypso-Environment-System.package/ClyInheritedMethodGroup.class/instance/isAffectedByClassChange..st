system changes
isAffectedByClassChange: aClassAnnouncement

	"class rename change could not affect properpties of this group"
	aClassAnnouncement class = ClassRenamed ifTrue: [ ^false ].
	
	^classScope includes: aClassAnnouncement classAffected  