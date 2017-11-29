accessing
detachedItems
	"Selection manages own items in the way that they should not be in long use from outside.
	For example when items data source is changed my items could have null environment item inside
	accouring to selection update logic. So users should not break because of that.
	If users want to use selection items for long time (for example browser context wants) 
	then they should ask for #detachedItems"
	
	^items collect: [:each | each copy]