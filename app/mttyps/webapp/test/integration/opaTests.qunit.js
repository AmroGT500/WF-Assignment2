sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'mttyps/mttyps/test/integration/FirstJourney',
		'mttyps/mttyps/test/integration/pages/MTTYPSList',
		'mttyps/mttyps/test/integration/pages/MTTYPSObjectPage'
    ],
    function(JourneyRunner, opaJourney, MTTYPSList, MTTYPSObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('mttyps/mttyps') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMTTYPSList: MTTYPSList,
					onTheMTTYPSObjectPage: MTTYPSObjectPage
                }
            },
            opaJourney.run
        );
    }
);