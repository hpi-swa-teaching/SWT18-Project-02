as yet unclassified
undo

	self setFontTypeWith: self lastFontType pop To: self lastFont pop.
	self changed: #stackNotEmpty.
	self changed: #contents