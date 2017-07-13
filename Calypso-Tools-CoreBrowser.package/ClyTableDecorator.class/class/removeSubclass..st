accessing
removeSubclass: aSubclass
	super removeSubclass: aSubclass.
	self sortedDecorators remove: aSubclass ifAbsent: [ ]