My subclasses represent specific kind of pattern to filter given strings.

Subclases should implement single method #matches: to check if string in argument is satisfied pattern.

If my subclasses define extra state the should implement comparison method according to my logic.

I keep actual pattern string in the value variable. 
Instances can be created using #with: message:
	ClySubstringPattern with: 'expected substring'

Internal Representation and Key Implementation Points.

    Instance Variables
	value:		<String>