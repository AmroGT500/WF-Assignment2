sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'matgrps/matgrps/test/integration/FirstJourney',
		'matgrps/matgrps/test/integration/pages/MATGRPSList',
		'matgrps/matgrps/test/integration/pages/MATGRPSObjectPage'
    ],
    function(JourneyRunner, opaJourney, MATGRPSList, MATGRPSObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('matgrps/matgrps') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMATGRPSList: MATGRPSList,
					onTheMATGRPSObjectPage: MATGRPSObjectPage
                }
            },
            opaJourney.run
        );
    }
);