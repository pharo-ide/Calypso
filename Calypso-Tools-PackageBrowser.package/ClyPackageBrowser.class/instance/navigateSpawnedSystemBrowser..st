navigation
navigateSpawnedSystemBrowser: aSystemBrowser

	self selectedMethods isEmpty ifFalse: [ 
		^aSystemBrowser selectMethod: self selectedMethods lastSelectedItem actualObject].
	
	self selectedClasses isEmpty ifFalse: [ 
		^aSystemBrowser selectClass: self selectedClasses lastSelectedItem actualObject].
	
	self selectedPackages isEmpty ifFalse: [ 
		^aSystemBrowser selectPackage: self selectedPackages lastSelectedItem actualObject]