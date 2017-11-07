system changes
requiresDetailedCheckForAffectOf: aSystemAnnouncement

	^ subqueries anySatisfy:	[ :each | 
			each requiresDetailedCheckForAffectOf: aSystemAnnouncement]