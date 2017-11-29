queries
querySystemFor: aTypedQuery 
	aTypedQuery bindTo: self systemScope in: self.
	^aTypedQuery execute