Class {
	#name : #ClySortMethodFunctionTests,
	#superclass : #ClySortFunctionTestCase,
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #tests }
ClySortMethodFunctionTests >> testAscending [

	function := ClySortMethodBySelectorFunction ascending.
	
	self deny: (function value: Object >> #size value: Object >> #printString ).
	self assert: (function value: Object >> #printString value: Object >> #size ).
	self assert: (function value: Object >> #printString value: Object >> #printString )
]

{ #category : #tests }
ClySortMethodFunctionTests >> testAscendingForBinaryAndUnarySelectors [
	"binary selector is always on top when ascending and on botton when descending"
	function := ClySortMethodBySelectorFunction ascending.
	
	self assert: #| > #abs. "this should not affect desired sort behaviour"
	self assert: (function value: Integer >> #| value: Number >> #abs ).
	self deny: (function value: Number >> #abs value: Integer >> #| ).
	
	self deny: #+ > #abs. "this should not affect desired sort behaviour"	
	self assert: (function value: Number >> #+ value: Number >> #abs ).
	self deny: (function value: Number >> #abs value: Number >> #+ )
]

{ #category : #tests }
ClySortMethodFunctionTests >> testAscendingMethodsWithSameSelectorButDifferentClass [

	function := ClySortMethodBySelectorFunction ascending.
	
	self deny: (function value: Object >> #printString value: Number >> #printString ).
	self assert: (function value: Number >> #printString value: Object >> #printString )
]

{ #category : #tests }
ClySortMethodFunctionTests >> testDescending [

	function := ClySortMethodBySelectorFunction descending.
	
	self assert: (function value: Object >> #size value: Object >> #printString ).
	self deny: (function value: Object >> #printString value: Object >> #size ).
	self assert: (function value: Object >> #printString value: Object >> #printString )
]

{ #category : #tests }
ClySortMethodFunctionTests >> testDescendingForBinaryAndUnarySelectors [
	"binary selector is always on top when ascending and on botton when descending"
	function := ClySortMethodBySelectorFunction descending.
	
	self assert: #| > #abs. "this should not affect desired sort behaviour"	
	self deny: (function value: Integer >> #| value: Number >> #abs ).
	self assert: (function value: Number >> #abs value: Integer >> #| ).
	
	self deny: #+ > #abs. "this should not affect desired sort behaviour"	
	self deny: (function value: Number >> #+ value: Number >> #abs ).
	self assert: (function value: Number >> #abs value: Number >> #+ )
]

{ #category : #tests }
ClySortMethodFunctionTests >> testDescendingMethodsWithSameSelectorButDifferentClass [

	function := ClySortMethodBySelectorFunction descending.
	
	self assert: (function value: Object >> #printString value: Number >> #printString ).
	self deny: (function value: Number >> #printString value: Object >> #printString )
]
