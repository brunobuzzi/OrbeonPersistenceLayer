update restrictions
isCreationRejectedByBpmFor: fNamed withId: fId in: appName
	"The creation is rejected for <anOrbeonSavedFormDefinition> when already exist a form definition named <fNamed> in application named <appName> but the <ids> are different.
	This case happend when a pair <appName,formName> is saved with different id. [IN THIS PERSISTENCE LAYER THIS IS FORBIDDEN BY CODE]"

	"This control is implemented here because BPM issue #395 (https://github.com/brunobuzzi/BpmFlow/issues/395)
		(app or form change name after BpmOrbeonTaskInstance has been created or finalized)

	If BpmProcessDefinition has been already created without any BpmProcessInstances and FormInstances, and a FormDefinition or Application is renamed 
	--> when a BpmProcessInstance is created the execution is going fail because the forms were move to another app or form name 
	(and the BpmProcessDefinition was not moved to the new application because the rename was done in Orbeon directly).

	So if aBpmProcessDefinition already exist (using) FormDefinitions 
	--> app name and form name can NOT be renamed."
	(self defaultProcessDefinitionClass getAllVersionsIn: self getApplicationName) do: [:eachDef | 
		(eachDef getOrbeonTasks anySatisfy: [:eachTask | [(eachTask name = self formName) and: 
																						[self id ~= fId]]]) 
		ifTrue: [^true "creation rejected"]
	].


	^(self getOrbeonApplicationClass includesDefinitionNamed: fNamed in: appName) 
			and:[(self applicationName = appName) 
			and:[(self formName = fNamed) 
			and: [self id ~= fId]]]