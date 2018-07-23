as yet unclassified
selectedFont

	| font |
	font := self selectedTextStyle fontOfPointSize: pointSize.
	^font emphasized: emphasis