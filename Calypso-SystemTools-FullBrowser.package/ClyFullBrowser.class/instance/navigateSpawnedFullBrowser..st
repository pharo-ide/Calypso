navigation
navigateSpawnedFullBrowser: aFullBrowser

	self methodSelection isEmpty ifFalse: [ 
		^aFullBrowser selectMethod: self methodSelection lastSelectedItem actualObject].
	
	self classSelection isEmpty ifFalse: [ 
		^aFullBrowser selectClass: self classSelection lastSelectedItem actualObject].
	
	self packageSelection isEmpty ifFalse: [ 
		^aFullBrowser selectPackage: self packageSelection lastSelectedItem actualObject]