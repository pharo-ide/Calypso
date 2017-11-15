testing
isResult: aQueryResult affectedBy: aSystemAnnouncement
	"This query is not restricted by the scope
	because it analyses methods from scope classes together with all superclasses.
	So the result can be affected by the changes out of query scope.
	And here we omit scope logic and rely completely on event.
	So the actual decision about affect 
	is based on #isAffectedByChangedMethod: method"
	
	^aSystemAnnouncement canAffectResultOfMethodQuery: self