public
selectedPackages
	^self selectedObjects collect: [ :each | each method package ]