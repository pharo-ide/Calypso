initialization
initialize
	super initialize.
	accessGuard := Mutex new.
	buildingQuery := self class asEnvironmentQuery