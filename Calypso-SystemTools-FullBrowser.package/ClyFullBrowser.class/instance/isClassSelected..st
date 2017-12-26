testing
isClassSelected: aClass
	"It is the logic to return true when metaclass is selected but given aClass is its instance side. 
	In future this complexity should be addressed with first class ClassBrowserItem"
	^self classSelection items anySatisfy: [ :each | 
		each actualObject == aClass or: [ 
			each systemDefinition definingClass == aClass ]]