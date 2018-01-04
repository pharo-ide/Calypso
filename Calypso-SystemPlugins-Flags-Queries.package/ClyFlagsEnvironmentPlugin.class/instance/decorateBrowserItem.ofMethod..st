item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	(aMethod  sendsAnySelectorOf: #(flag:)) ifTrue: [ 
		anItem markWith: ClyMethodFlag]