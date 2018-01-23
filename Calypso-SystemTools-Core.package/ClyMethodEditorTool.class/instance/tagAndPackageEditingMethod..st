operations
tagAndPackageEditingMethod: aMethod
	self tagEditingMethod: aMethod.
	"Tagging should be performed before package movement 
	because extending package is still based on protocol begining with star. 
	So it should override manual tagging"	
	self packageEditingMethod: aMethod