Class {
	#name : #ClySortMethodByPackageFunctionTests,
	#superclass : #ClySortFunctionTestCase,
	#category : #'Calypso-SystemQueries-Tests-Queries'
}

{ #category : #tests }
ClySortMethodByPackageFunctionTests >> testAscendingDifferentPackage [

	function := ClySortMethodByPackageFunction ascending.
	
	self deny: (function value: Object >> #printString value: Number >> #printString ).
	self assert: (function value: Number >> #printString value: Object >> #printString )
]

{ #category : #tests }
ClySortMethodByPackageFunctionTests >> testAscendingSamePackageDifferentClass [

	function := ClySortMethodByPackageFunction ascending.
	
	self deny: (function value: True >> #not value: Object >> #printString).
	self assert: (function value: Object >> #printString value: True >> #not )
]

{ #category : #tests }
ClySortMethodByPackageFunctionTests >> testAscendingSamePackageSameClassDifferentSelector [

	function := ClySortMethodByPackageFunction ascending.
	
	self deny: (function value: Object >> #yourself value: Object >> #printString ).
	self assert: (function value: Object >> #printString value: Object >> #yourself )
]

{ #category : #tests }
ClySortMethodByPackageFunctionTests >> testDescendingDifferentPackage [

	function := ClySortMethodByPackageFunction descending.
	
	self deny: (function value: Number >> #printString value: Object >> #printString ).
	self assert: (function value: Object >> #printString value: Number >> #printString ).
]

{ #category : #tests }
ClySortMethodByPackageFunctionTests >> testDescendingSamePackageDifferentClass [

	function := ClySortMethodByPackageFunction descending.
	
	self deny: (function value: Object >> #printString value: True >> #not ).
	self assert: (function value: True >> #not value: Object >> #printString).
]

{ #category : #tests }
ClySortMethodByPackageFunctionTests >> testDescendingSamePackageSameClassDifferentSelector [

	function := ClySortMethodByPackageFunction descending.
	
	self deny: (function value: Object >> #printString value: Object >> #yourself ).
	self assert: (function value: Object >> #yourself value: Object >> #printString ).
]
