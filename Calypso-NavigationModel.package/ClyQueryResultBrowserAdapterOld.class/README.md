I adopt arbitrary query result to ClyBrowserQueryResult.
I implement query interface of ClyBrowserQueryResult and convert actual raw items to the ClyBrowserItem instances. 
I prepare converted browser items with full semantics of ClyBrowserQueryResult. So all requested items include precomputed properties.

I am used to be able represent any query result in the browser. 
Browser always work with result using cursor. And cursor expects to be created over ClyBrowserQueryResult. So I am used to open cursor on any other kind of result. The hook is in the result method #adoptForBrowser:
	
	ClyQueryResult>>adoptForBrowser
		^ClyQueryResultBrowserAdapter for: self

	ClyBrowserQueryResult>>adoptForBrowser
		^self

Internal Representation and Key Implementation Points.

    Instance Variables
	actualResult:		<ClyQueryResult>