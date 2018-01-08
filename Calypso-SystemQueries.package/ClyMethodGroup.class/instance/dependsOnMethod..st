testing
dependsOnMethod: aMethod
	"This method is used to collect dynamic method group which depends on methods.
	It can be simple #includesMethod: which is default implementation here.
	But some groups require hook to be in group list but do not includes any methods.
	They will override it with true return. For example look at async method group"
	^self includesMethod: aMethod