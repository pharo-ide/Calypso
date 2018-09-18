decoration
buildCriticalTextSegmentsFor: anObject

	| interval segment severity |
	^criticView dataSource allElements
		select: [ :critique | critique hasProperty: ClySourceNodeCritiqueIntervalProperty ]
		thenCollect: [ :critique |
			interval := critique getProperty: ClySourceNodeCritiqueIntervalProperty.		
			segment := ClyCriticalTextSegmentMorph
				from: interval start
				to: interval stop + 1.
			severity := critique getProperty: ClyCritiqueSeverityProperty.
			segment
				label: critique name;
				icon: (browserTool iconNamed: severity iconName);
				color: severity color;
				critique: critique actualObject;
				entity: anObject;
				yourself]