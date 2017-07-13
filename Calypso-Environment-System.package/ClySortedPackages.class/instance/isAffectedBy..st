system changes
isAffectedBy: aSystemAnnouncement
	"Normally system shows dirty state of package after any system change.
	It means that we think that any system change affects packages.
	But generally it should be responsibility of plugin to know
	that package items are marked by dirty tag.
	
	Also we don't care that there is possibility 
	to build sorted packages from specific objects instead of packages themselves.
	So any package change is related to my items"
	
	^aSystemAnnouncement affectsPackages