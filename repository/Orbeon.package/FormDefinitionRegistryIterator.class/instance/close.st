stream
close
	"The receiver close all <ReadStreamPortable> contained in <streams>"

	streams do: [:each | each close]