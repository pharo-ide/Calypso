initialization
initialize
	super initialize.
	guard := Mutex new.
	analyzedObjects := ClyCritiqueRegistry new.
	requestedCritiques := ClyCritiqueRegistry new.
	requestedCritiques beWeak.
	analysis := ClyCriticAnalysis critic: self.
	announcer := Announcer new.