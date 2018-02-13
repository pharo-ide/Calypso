I am a special class query result which put extension classes to the end of list.
I am used in class view to show all extensions in the bottom. 

To detect which classes are extensions I use the scope from where the query was executed. In fact I detect which classes are defined in building query scope. And the rest are extensions.
For this logic I find in scope the package which defines given class. So I expect that query scope understands #packagesDo:. Now it is ClyPackageScope and ClyProjectScope.
Look at #isQueryScopeDefinesClass: for details.

And at last step I format classes from each part. I use #baseQueryResult for this.
I can be configured to show classes in simple sorted way: 

	ClyExtensionLastSortedClasses simple 
	
or to show classes in sorted hierarchy: 

	ClyExtensionLastSortedClasses hierarchical
	
For other cases you can instantiate me by #using: method: 

	ClyExtensionLastSortedClasses using: ClySubclassHierarchy inverse asQueryResult
 
In addition I mark all extended classes with ClyExtendedClassTag which is used by UI to work with such classes differently.

Also notice that I am a kind of ClyBrowserQueryResult. So I convert all given classes to the ClyBrowserItem instances.

Internal Representation and Key Implementation Points.

    Instance Variables
	baseQueryResult:		<ClyQueryResult>