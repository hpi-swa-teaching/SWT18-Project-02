as yet unclassified
searchWebFont

	|response body|
	
	response := WebClient httpGet: 'https://fonts.googleapis.com/css?family=Inconsolata&text=Hello%20World'.
	body := response content.
	"self webFontResultsText setText: body."