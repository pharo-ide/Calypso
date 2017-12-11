initialization
prepareBasisFrom: classes
	^classes collect: [:each | self metaLevelOf: each ]