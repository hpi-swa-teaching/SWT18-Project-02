as yet unclassified
closeEtoysMorphs

	[eToysMorphs isEmpty] whileFalse: [
		eToysMorphs top delete.
		eToysMorphs pop].
	
	self changed: #stackNotEmpty 