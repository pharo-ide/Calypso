queries
methodsDo: aBlock
	
	self packagesDo: [ :package | 
		package extensionMethods do: aBlock ]