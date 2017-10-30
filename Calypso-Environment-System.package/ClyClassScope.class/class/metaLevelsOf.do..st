private
metaLevelsOf: aClass do: aBlock
	"Subclasses can define what meta level is visible. 
	For example it can be instance side, class side or both.
	By default given class is its own meta level"
	
	aBlock value: aClass