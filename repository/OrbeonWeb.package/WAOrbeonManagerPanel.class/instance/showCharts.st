commands
showCharts

	arena := OrbeonChartPanel new.
	arena mainPanel: self.
	arena onAnswer: [ :answer | arena := nil].