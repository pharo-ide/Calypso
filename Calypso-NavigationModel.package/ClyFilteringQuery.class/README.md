I represent query which filter results of another query.
My instances can be created by:
	ClyEnvironmentFilterQuery for: anEnvironmentQuery by: anItemFilter
To fetch result from environment I evaluate originalQuery and filter it result by my itemFilter.
Look at method fetchContent:from: for details.

itemFilter is represented by subclasses of ClyItemFilter. For example there is ClyItemNameSubstringFilter which match items by name with given substring. 

Internal Representation and Key Implementation Points.

    Instance Variables
	itemFilter:		<ClyItemFilter>
	originalQuery:		<ClyEnvironmentQuery>