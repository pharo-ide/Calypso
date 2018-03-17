building
buildWith: rawObjects
	"it is suitable method to build result manually avoiding query logic.
	needsRebuild false value will prevent rebuilding when accessing items which were manually filled"
	needsRebuild := false.
	self initializeItems.
	rawResult := buildingQuery prepareNewResult.
	rawResult fillWith: rawObjects.
	self fillWith: rawResult items.
	self buildIndexes