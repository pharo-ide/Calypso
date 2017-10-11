tools decoration
decorateResultMethodEditor: aMethodEditor

	criteriaString ifNil: [ ^self ].
	
	"aMethodEditor selectAnyString: {criteriaString}"
	aMethodEditor selectStringAsInMessageBrowser: criteriaString