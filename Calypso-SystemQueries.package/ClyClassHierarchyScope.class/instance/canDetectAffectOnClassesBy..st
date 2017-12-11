testing
canDetectAffectOnClassesBy: aSystemAnnouncement
	"I can not detect that removed class was in my hierarchy.
	I can not detect that removed trait from class definition was in users hierarchy of some root trait.
	For example when remove event is announced 
	then affected class is still in the list of subclasses of superclass"		
	
	^(aSystemAnnouncement isKindOf: ClassAnnouncement) not