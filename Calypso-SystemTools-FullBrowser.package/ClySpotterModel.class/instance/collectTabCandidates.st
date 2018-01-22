private
collectTabCandidates
	^ self browser tabManager tools 
		collect: [ :each | 
			each defaultTitle -> [
				each containerTab selected: true.
				each takeKeyboardFocus ] ]