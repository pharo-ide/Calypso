building
buildWith: rawObjects
	"it is suitable method to build result manually avoiding query logic.
	needsRebuild false value will prevent rebuilding when accessing items which were manually filled"
	needsRebuild := false.
	self initializeItems.
	actualResult := buildingQuery prepareNewResult.
	actualResult buildWith: rawObjects.
	items := actualResult items