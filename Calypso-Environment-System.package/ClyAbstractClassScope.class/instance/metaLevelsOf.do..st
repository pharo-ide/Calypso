meta level
metaLevelsOf: aClass do: aBlock
	"Subclasses should decide what class meta level is visible. 
	For example it can be instance side, class side or both"
	
	self subclassResponsibility 