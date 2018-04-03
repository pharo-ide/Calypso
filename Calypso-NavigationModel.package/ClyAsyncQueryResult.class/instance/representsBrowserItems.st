testing
representsBrowserItems
	"Nil query means that result is not prepared for query execution
	and therefor it does not represent browser items"
	
	^buildingQuery notNil and: [ buildingQuery retrievesBrowserItems]