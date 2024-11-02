sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'riskmanagement/module04/test/integration/FirstJourney',
		'riskmanagement/module04/test/integration/pages/RisksList',
		'riskmanagement/module04/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, RisksList, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('riskmanagement/module04') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRisksList: RisksList,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);