testing
isNameAffectedByClassChange: aClassAnnouncement
	"Name could be only affected by ClassRename event.
	And because this event is about instance side of class 
	we should compare affected class with instance side of declaration class"
	
	^aClassAnnouncement class = ClassRenamed and: [ 
		declarationClass instanceSide = aClassAnnouncement classAffected instanceSide]