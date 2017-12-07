running
multipleScopeSample
	^ self scopeClass 
		ofAll: {self singleBasisSample. self extraBasisSample}
		in: environment