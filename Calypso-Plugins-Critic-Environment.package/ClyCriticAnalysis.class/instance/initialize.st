initialization
initialize
	super initialize.
	guard := Mutex new.
	processes := OrderedCollection new.
	processingPriority := Processor userBackgroundPriority - 10