building
buildLabel

	label := self theme newLabelIn: self label: self printMethodTagsOrPackage.
	label on: #click send: #openEditor to: self