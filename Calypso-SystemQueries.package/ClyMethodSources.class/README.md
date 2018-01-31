I return all methods which source code includes particular string pattern.
For example it can be simple substring or regex expression. 
But generally pattern is represented by ClyStringPattern subclasses.

To create my instances use following methods:

	ClyMethodSources withString: 'probe string'.
	ClyMethodSources withString: 'probe string' caseSensitive: true.
	ClyMethodSources filteredBy: aStringPattern
	
Internal Representation and Key Implementation Points.

    Instance Variables
	pattern:		<ClyStringPattern>