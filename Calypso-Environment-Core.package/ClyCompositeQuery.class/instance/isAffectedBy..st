system changes
isAffectedBy: aSystemAnnouncement

	^ subqueries anySatisfy:	[ :each | 
			each isAffectedBy: aSystemAnnouncement ]