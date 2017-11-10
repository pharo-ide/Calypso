testing
isAffectedBy: aSystemAnnouncement
	"This query do not really depends on scope because it analyzed superclasses from scope
	and retrieve their methods which do not belongs to scope.
	So actual decision about query invalidation is based on #isAffectedByChangedMethod:"
	
	^aSystemAnnouncement canAffectResultOfMethodQuery: self