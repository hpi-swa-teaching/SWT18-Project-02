as yet unclassified
contents

	Transcript show: 'reset'.

	^ self selectedFont
		ifNil: [Text new]
		ifNotNil: [:font | font sampleText]