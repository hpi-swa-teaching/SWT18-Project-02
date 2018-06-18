initialize
initialize

	super initialize.
	searchString := ValueHolder new contents: 'Enter search string here'.
	searchString addDependent: self.
	
	emphasis := 0.
