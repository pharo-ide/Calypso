system changes
requiresDetailedCheckForAffectOf: aSystemAnnouncement inScope: anEnvironmentScope
	"By default queries should be able detect affect on result 
	by using only given scope and announcement without check of actual result items. 
	This logic is defined in the method:
		isAffectedBy: aSystemAnnouncement inScope: anEnvironmentScope
	But in some cases event and scope information can be not enough 
	and detailed check for result items is required.
	Subclasses with this specific return true from this method 
	which can depends on actual event and actual scope instances.
	Also in that case they should implement the method 
		checkDetailsOfResult: items forAffectOf: aSystemAnnouncement
	with required logic to test every item in the result"
	^false