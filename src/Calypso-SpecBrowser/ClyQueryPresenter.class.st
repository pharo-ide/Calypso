Class {
	#name : #ClyQueryPresenter,
	#superclass : #ComposablePresenter,
	#instVars : [
		'table'
	],
	#category : 'Calypso-SpecBrowser'
}

{ #category : #specs }
ClyQueryPresenter class >> defaultSpec [
	<spec>
	
	^ SpecLayout composed 
			add: #table origin: 0@0 corner: 1@1;
			yourself
]

{ #category : #examples }
ClyQueryPresenter class >> exampleWithSenders [
	<example>
	| presenter query |
	query := ClyMessageSenders of: #do: from: ClyNavigationEnvironment currentImageScope.
	presenter := self new
		showQuery: (query withResult: (ClySortedQueryResult using: ClySortMethodFunction ascending));
		openWithSpec.
	^ presenter
]

{ #category : #private }
ClyQueryPresenter >> closeDataSource [
	 
 	table dataSource close
]

{ #category : #accessing }
ClyQueryPresenter >> dataSource: aDataSource [

	self closeDataSource.	
	self setUpDataSource: aDataSource
]

{ #category : #initialization }
ClyQueryPresenter >> initializeWidgets [

	table := self instantiate: SpecTablePresenter.
	table column: [:each | each name].
	
	table dataSource: ClySpecDataSource empty 
]

{ #category : #'event handling' }
ClyQueryPresenter >> itemsChangedIn: aDataSource [ 
	
]

{ #category : #private }
ClyQueryPresenter >> refreshTable [
	table refresh
]

{ #category : #private }
ClyQueryPresenter >> setUpDataSource: aDataSource [
	table dataSource: aDataSource.
	aDataSource openOn: self.
]

{ #category : #queries }
ClyQueryPresenter >> showQuery: aQuery [

	| dataSource |
	dataSource := ClySpecDataSource on: aQuery.
	self dataSource: dataSource
]

{ #category : #accessing }
ClyQueryPresenter >> table [
	^ table
]

{ #category : #accessing }
ClyQueryPresenter >> table: anObject [
	table := anObject
]
