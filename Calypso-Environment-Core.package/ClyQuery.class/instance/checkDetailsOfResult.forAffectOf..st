system changes
checkDetailsOfResult: items forAffectOf: aSystemAnnouncement
	"By default queries should be able detect affect on result 
	by using only given scope and announcement without check of actual result items. 
	This logic is defined in the method:
		isAffectedBy: aSystemAnnouncement inScope: anEnvironmentScope
	But in some cases information from the given event and scope is not enough
	and subclasses requires extra detailed check for every item in the result.
	In that cases they return true from the method 
		requiresResultCheckForAffectOf: aSystemAnnoucement inScope: anEnvironmentScope
	And they implement this described method with required logic to check every result item.
	By default I return false because detailes of the result are not defined at my level.
	And therefore they are not affected by any event"

	^false