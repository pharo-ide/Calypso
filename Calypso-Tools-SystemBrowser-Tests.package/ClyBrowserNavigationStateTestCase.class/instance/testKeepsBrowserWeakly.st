tests
testKeepsBrowserWeakly
	self timeLimit: 10 seconds.
	self snapshotNavigationState.
	self assert: navigationState browser equals: browser.
	browser windowIsClosing. "we should simulate browser closing"
	WorldState deferredUIMessages removeAll. "browser tabs can add deferred actions which points globaly to browser"
	browser := nil.	
	Smalltalk garbageCollect.
	self assert: navigationState browser isNil