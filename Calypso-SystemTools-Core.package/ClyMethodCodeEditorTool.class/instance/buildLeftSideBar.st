building
buildLeftSideBar
	super buildLeftSideBar.

	self leftSideBar
		 on: #click send: #leftSideBarClicked: to: self;
		 on: #mouseUp send: #leftSideBarClickedMouseUp: to: self