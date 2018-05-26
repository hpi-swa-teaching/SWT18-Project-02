as yet unclassified
contents

	^ self selectedFont
		ifNil: [Text new]
		ifNotNil: [:font | font sampleText]