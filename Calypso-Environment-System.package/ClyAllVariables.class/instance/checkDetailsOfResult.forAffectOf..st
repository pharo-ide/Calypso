system changes
checkDetailsOfResult: items forAffectOf:  aSystemAnnouncement
	
	^items anySatisfy: [ :each | 
		aSystemAnnouncement affectsMethodGroup: each actualObject ]