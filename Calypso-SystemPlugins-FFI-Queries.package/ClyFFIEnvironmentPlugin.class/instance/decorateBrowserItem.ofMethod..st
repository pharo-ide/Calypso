item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	aMethod isFFICall ifTrue: [ 
		anItem markWith: ClyFFIMethodTag]