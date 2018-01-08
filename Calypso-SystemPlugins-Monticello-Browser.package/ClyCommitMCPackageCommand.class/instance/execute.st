execution
execute
	| icePackages iceRepos mcPackages |
	packages ifEmpty: [ ^IceRepositoriesBrowser open ].
	
	icePackages := packages select: [ :each | [each iceRepository. true] ifError: [false]].	
	iceRepos := icePackages collect: [ :each | each iceRepository ] as: Set.
	iceRepos do: [ :each | IceSynchronizeBrowser synchronize: each ].
	
	mcPackages := packages copyWithoutAll: icePackages.
	mcPackages ifNotEmpty: [ 
		Komitter openAndCommitToMonticelloWorkingCopiesFilteredBy: [ :workingCopy |
			"simple #includes: not works here. Somehow packages are different" 
			mcPackages anySatisfy: [ :each | each name = workingCopy package name]]]