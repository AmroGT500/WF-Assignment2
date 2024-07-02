sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'plants/plants/test/integration/FirstJourney',
		'plants/plants/test/integration/pages/PlantsList',
		'plants/plants/test/integration/pages/PlantsObjectPage'
    ],
    function(JourneyRunner, opaJourney, PlantsList, PlantsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('plants/plants') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePlantsList: PlantsList,
					onThePlantsObjectPage: PlantsObjectPage
                }
            },
            opaJourney.run
        );
    }
);