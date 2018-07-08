as yet unclassified
createEtoy


	self eToysMorphs push: Morph new openInWorld.
	self eToysMorphs top openViewerForArgument.
	
	self changed: #stackNotEmpty