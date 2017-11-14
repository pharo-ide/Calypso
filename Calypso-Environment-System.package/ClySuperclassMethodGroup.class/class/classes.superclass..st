instance creation
classes: classes superclass: aClass
	^(self classScope: classes)
		superclass: aClass