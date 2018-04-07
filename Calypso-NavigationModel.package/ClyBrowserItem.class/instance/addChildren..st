accessing
addChildren: aClyBrowserItemChildren 
	self children removeAllSuchThat: [:each | each name = aClyBrowserItemChildren name].
	
	self children add: aClyBrowserItemChildren