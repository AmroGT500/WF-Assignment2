sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'materials/materials/test/integration/FirstJourney',
		'materials/materials/test/integration/pages/MaterialsList',
		'materials/materials/test/integration/pages/MaterialsObjectPage'
    ],
    function(JourneyRunner, opaJourney, MaterialsList, MaterialsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('materials/materials') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMaterialsList: MaterialsList,
					onTheMaterialsObjectPage: MaterialsObjectPage
                }
            },
            opaJourney.run
        );
    }
);