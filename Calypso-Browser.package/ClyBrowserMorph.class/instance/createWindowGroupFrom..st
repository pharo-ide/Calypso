opening/closing
createWindowGroupFrom: currentWindow
  | group pos ext |
	(currentWindow ownerThatIsA: GroupWindowMorph) ifNotNil: [:existing | ^existing].
	
	pos := currentWindow position.
	ext := currentWindow extent.
	group := ClyGroupWindowMorph new.
	group addWindow: currentWindow.
	(group openInWindowLabeled: currentWindow label) 
 		extent: ext;
		position: pos.
	^group