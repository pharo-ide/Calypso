selection-classes
selectedClassSide
	"The browser (tool) has selected classes but the side from where browser show it can be instance side of class side.
	So this method return actual 'meta side' of selected class"
	^ tool currentMetaLevelOf: self lastSelectedClass