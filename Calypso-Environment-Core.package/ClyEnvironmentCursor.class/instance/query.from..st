queries
query: aQueryOrContentClass from: basisObjects
	"execute new query from scope of basisObjects 
	which supposed to be some of observedContent items"
	
	^observedContent query: aQueryOrContentClass from: basisObjects