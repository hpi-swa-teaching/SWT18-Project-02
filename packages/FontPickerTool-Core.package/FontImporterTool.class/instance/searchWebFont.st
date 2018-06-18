as yet unclassified
searchWebFont

	|test_string response result result_indices family_names test search_string result_string|
	response := WebClient httpGet: 'https://www.googleapis.com/webfonts/v1/webfonts?key=AIzaSyBng62DSYoqAbhmE-DyTvz-Ge9wUMHas38'.
	test_string := response content asString.
	search_string := searchString.
	result_string := ''.
	test := #() asOrderedCollection.
	result := #() asOrderedCollection.
	result_indices := #() asOrderedCollection.
	family_names := #() asOrderedCollection.
	test_string linesDo: [:aLine | result add: aLine].
	result_indices := result collect: [:aLine | (aLine allRegexMatches: '   \"family\"\: \"', search_string, '(.)*",') ifEmpty: [] ifNotEmpty: [result indexOf: aLine ifAbsent: nil]].
	result_indices := result_indices removeAllSuchThat: [:r | r isNil].
	result_indices do: [:r | family_names add: (result at: r)].
	family_names do: [:aFamilyName | test add: (aFamilyName copyFrom: 15 to: aFamilyName size - 2)].
	result_string := test inject: '' into: [:totalString :value | totalString , value , String cr].
	self webFontResultText: result_string.
	self changed: #webFontResultText.
	response close