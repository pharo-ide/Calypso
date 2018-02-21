I am abstract critique query which subclasses wrap another critique query and filter result critiques according to their logic.

To create my instances use following expression: 

	ClyFilteringCritiqueQuery filter: aCritiqueQuery from: aScope
	
Internal Representation and Key Implementation Points.

    Instance Variables
	baseCritiqueQuery:		<ClyCritiqueQuery>