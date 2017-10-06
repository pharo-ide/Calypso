navigation
navigateSpawnedSystemBrowser: aSystemBrowser

	self methodSelection isEmpty ifFalse: [ 
		^aSystemBrowser selectMethod: self methodSelection lastSelectedItem actualObject].
	
	self classSelection isEmpty ifFalse: [ 
		^aSystemBrowser selectClass: self classSelection lastSelectedItem actualObject].
	
	self packageSelection isEmpty ifFalse: [ 
		^aSystemBrowser selectPackage: self packageSelection lastSelectedItem actualObject]