initialization
setUpDefaultIcon
	"Here we duplicate logic of #defaultIconName to directly ask class about comment.
	This method is called during background tab building. 
	So it does not really affect performance which is critical for remote scenario"
	
	| iconName |
	iconName := editingClass hasComment ifTrue: [ #commentsIcon ] ifFalse: [ #uncommentedClass ].
	containerTab icon: (self iconNamed: iconName)