items resolving
prepareBasisFrom: classes
	^classes collect: [:each | self resolveClass: each ]