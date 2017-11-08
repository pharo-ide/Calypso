initialization
prepareBasisFrom: classes
	^classes collect: [:each | self resolveClass: each ]