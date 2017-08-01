initialization
initialize
	super initialize.
	
	providesMethodGroup := self class providesMethodGroupByDefault.
	systemCritic := ClySystemCritic new.
	