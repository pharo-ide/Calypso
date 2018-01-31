I am a query of class comments

I filter available classes using particular string pattern which class comment should satisfy.
For example it can be simple substring or regex expression. 
But generally pattern is represented by ClyStringPattern subclasses.

To create my instances use following methods:

	ClyClassComment withString: 'probe string'.
	ClyClassComment withString: 'probe string' caseSensitive: true.
	ClyClassComment filteredBy: aStringPattern
	
Internal Representation and Key Implementation Points.

    Instance Variables
	pattern:		<ClyStringPattern>