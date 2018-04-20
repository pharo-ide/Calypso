execution
execute
	| repoBrowser commitBrowser repos targetRepo |
	repoBrowser := self class environment at: #IceTipRepositoriesBrowser ifAbsent: [ 
		^ self inform: 'Iceberg 0.7 and higher is required'].
	commitBrowser := self class environment at: #IceTipCommitBrowser ifAbsent: [ 
		^ self inform: 'Iceberg 0.7 and higher is required'].
	packages ifEmpty: [ ^repoBrowser new openWithSpec ].
	
	repos := IceRepository registry select: [ :repo | 
		packages anySatisfy: [:each | repo includesPackageNamed: each name ]].
	repos ifEmpty: [ ^self inform: 'Selected packages does not managed by Iceberg'].
	targetRepo := repos size = 1 ifTrue: [ repos first ] ifFalse: [ 
		UIManager default 
			chooseFrom: (repos collect: #name) values: repos title: 'Choose repository'].
	targetRepo ifNil: [ ^self ]. 
			
	(commitBrowser onRepository: targetRepo) openWithSpec