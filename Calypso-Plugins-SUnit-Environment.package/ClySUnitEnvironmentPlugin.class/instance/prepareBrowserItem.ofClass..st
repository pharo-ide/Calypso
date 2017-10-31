items resolving
prepareBrowserItem: anItem ofClass: aClass

	(aClass isTestCase not or: [aClass isAbstract]) ifTrue: [ ^self ].
	
	anItem addProperty: (
		ClyTestResultProperty 
			count: aClass allTestSelectors size
			successes: (aClass history at: #passed) size
			failures: (aClass history at: #failures) size		
			errors: (aClass history at: #errors) size
	)