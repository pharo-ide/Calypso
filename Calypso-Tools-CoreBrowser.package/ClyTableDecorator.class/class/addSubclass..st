accessing
addSubclass: aSubclass
	super addSubclass: aSubclass.
	(self sortedDecorators includes: aSubclass) ifFalse: [ self sortedDecorators add: aSubclass]