other
register
	| application |

	WAAdmin unregister: 'orbeon'.

	application := WAAdmin register: self asApplicationAt: 'orbeon'.
	"application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator."
	application 
		preferenceAt: #sessionClass put: WAOrbeonSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQSmoothnessTheme.