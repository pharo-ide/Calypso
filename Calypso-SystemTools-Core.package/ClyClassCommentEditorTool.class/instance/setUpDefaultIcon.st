initialization
setUpDefaultIcon
	"There is the reason why this logic here instead of #defaultIconName.
	Idea that analysing comment can be slow and it is important to do it during background tab building.
	For example it is slow when browsing remote environment"
	
	editingClass hasComment ifTrue: [ ^ super setUpDefaultIcon ].
	
	containerTab icon: (self iconNamed: #uncommentedClass)