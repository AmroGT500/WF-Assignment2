sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'businesspartners/businesspartners/test/integration/FirstJourney',
		'businesspartners/businesspartners/test/integration/pages/PartnerInfoList',
		'businesspartners/businesspartners/test/integration/pages/PartnerInfoObjectPage'
    ],
    function(JourneyRunner, opaJourney, PartnerInfoList, PartnerInfoObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('businesspartners/businesspartners') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePartnerInfoList: PartnerInfoList,
					onThePartnerInfoObjectPage: PartnerInfoObjectPage
                }
            },
            opaJourney.run
        );
    }
);