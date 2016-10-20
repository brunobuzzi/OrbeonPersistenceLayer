other
renderContentOn: html
	| currentReport |

	html form with: [
		html fieldSet with: [ 
			html legend: 'Charts Report'.
			(currentIndex > 1) ifTrue: [html submitButton callback: [self previousChart]; with: '<<'].
			html div with: [html text: currentIndex printString].
			(self reporClass getCacheSize > currentIndex) ifTrue: [html submitButton callback: [self nextChart]; with: '>>'].
		]
	].

	((currentIndex > 0) and: [currentIndex <= self reporClass getCacheSize]) ifFalse: [^self]. 

	currentReport := self reporClass cache at: currentIndex.

	html div id: 'orbeon-graph'; class: 'overflow-scroll'; 
		with: [html html: currentReport svgContents].