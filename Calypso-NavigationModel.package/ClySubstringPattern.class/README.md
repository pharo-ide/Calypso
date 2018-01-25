I represent string pattern using substring which tested strings are supposed to include.

I can be case sensitive or not depending on my variable.
To create my instances you can use following messages:
	ClySubstringPattern with: 'expected substring' caseSensitive: true
By default my instances are not case sensitive.	
	
Internal Representation and Key Implementation Points.

    Instance Variables
	isCaseSensitive:		<Boolean>