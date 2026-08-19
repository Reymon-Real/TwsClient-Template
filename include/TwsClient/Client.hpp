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

	TwsSocketClientState_t m_state;

	int    m_reqId;
	int    m_orderId;
	time_t m_sleepDeadline;
	
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
	// *** Most important Functions ***
	// ********************************

	void start(int, void*);

	// ****************************
	// *** Connection Functions ***
	// ****************************

	bool connect(const char*, int, int);
	void disconnect() const;
	bool isConnected() const;

	// ************************
	// *** Unique Functions ***
	// ************************

	inline int nextId() {
		
		m_orderId = m_orderId + 1;

		return m_orderId;
	}

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
	void contractOperations();
	void marketScanners();
	void fundamentals();
	void bulletins();
	void testAlgoSamples();
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