as yet unclassified
closeEtoysMorphs

	self eToysMorphs
		collect: [:each | each delete];
		removeAll.
	
	self changed: #stackNotEmpty 