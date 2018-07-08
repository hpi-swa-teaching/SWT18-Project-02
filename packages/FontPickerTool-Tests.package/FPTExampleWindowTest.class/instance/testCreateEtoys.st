as yet unclassified
testCreateEtoys

	exampleWindow createEtoy.
	self assert: exampleWindow eToysMorphs isEmpty not.
	exampleWindow closeEtoysMorphs.
	self assert: exampleWindow eToysMorphs isEmpty 