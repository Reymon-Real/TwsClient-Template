// **********************************
// *** Author: Enosis Technology  ***
// *** Date:   April 15 from 2026 ***
// *** Update: April 15 from 2026 ***
// *** License: AGPL-3-or-later   ***
// **********************************

#ifndef TWSCLIENT_TEMPLATE_CLIENT_HPP
#define TWSCLIENT_TEMPLATE_CLIENT_HPP

// ***************
// *** Aliases ***
// ***************

// ******************
// *** Enumerates ***
// ******************

// **************
// *** Unions ***
// **************

// **************
// *** Clases ***
// **************

class TwsClient : EWrapper {
private:

	// ***************
	// *** Members ***
	// ***************

	EReaderOSSignal m_osSignal;
	EClientSocket*  m_pClient;

	TwsClientState_t m_state;
	time_t           m_sleepDeadline;
	OrderId          m_orderId;
	std::unique_ptr<EReader> m_pReader;
	bool             m_extraAuth;
	std::string      m_bboExchange;

public:

	// ***********************
	// *** Class Functions ***
	// ***********************

	TwsClient();
	~TwsClient();

	// ********************************
	// *** Most Important Functions ***
	// ********************************

	void start(int, void*);

	// ****************************
	// *** Connection Functions ***
	// ****************************

	bool connect(const char*, int, int, bool);
	void disconnect() const;
	bool isConnected() const;

	// ************************
	// *** Unique Functions ***
	// ************************

	OrderId nextId();

	// ****************************
	// *** Virtual Declarations ***
	// ****************************

	#include <IBKR/TwsSocketClient/EWrapper_prototypes.h>

	// *************************
	// *** Private Functions ***
	// *************************

private:
	void accountOperations();

    void pnlOperation();
    void pnlSingleOperation();

	void tickDataOperation();
	void tickOptionComputationOperation();
	
	void delayedTickDataOperation();
	
	void marketDepthOperations();
	void realTimeBars();
	void marketDataType();
	
	void historicalDataRequests();
	void optionsOperations();
	void orderOperations();
	void ocaSamples();
	void conditionSamples();
	void bracketSample();
	void hedgeSample();
	void contractOperations();
	void marketScanners();
	void fundamentals();
	void bulletins();
	void testAlgoSamples();
	void financialAdvisorOrderSamples();
	void financialAdvisorOperations();
	void testDisplayGroups();
	void miscellaneous();
	void reqFamilyCodes();
	void reqMatchingSymbols();
	void reqMktDepthExchanges();
	void reqNewsTicks();
	void reqSmartComponents();
	void reqNewsProviders();
	void reqNewsArticle();
	void reqHistoricalNews();
	void reqHeadTimestamp();
	void reqHistogramData();
	
	void marketRuleOperations();
    
    void reqHistoricalTicks();
    void reqTickByTickData();
	
	void whatIfSamples();
	void ibkratsSample();
	
	void wshCalendarOperations();

	void reqCurrentTime();

};

#endif // TWSCLIENT_TEMPLATE_CLIENT_HPP