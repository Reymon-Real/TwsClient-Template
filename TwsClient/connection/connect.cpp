// *****************************
// *** Autor: Reymon Dev     ***
// *** Datum: 26. Juli. 2026 ***
// *** Aktua: 27. Juli. 2026 ***
// *** Lizenz: MIT           ***
// *****************************

// *****************
// *** Libraries ***
// *****************

#include <TwsClient.hpp>

// ****************
// *** Function ***
// ****************

bool TwsClient::connect(const char* host, int port, int clientId, bool extraAuth) {

	printf(
		"Connecting to %s:%d "
		"clientId:%d\n",
		!(host && *host) ? "127.0.0.1" : host,
		port,
		clientId
	);
	
	bool bRes = m_pClient->eConnect(host, port, clientId, extraAuth);	

	if (bRes) {

		printf(
			"Connected to %s:%d "
			"clientId:%d "
			"serverVersion: %d\n",
			m_pClient->host().c_str(),
			m_pClient->port(),
			clientId,
			m_pClient->EClient::serverVersion()
		);

		m_pReader = std::unique_ptr<EReader>( new EReader(m_pClient, &m_osSignal) );
		m_pReader->start();

	} else {

		printf(
			"Cannot connect to %s:%d "
			"clientId:%d\n",
			m_pClient->host().c_str(),
			m_pClient->port(),
			clientId
		);

	}

	return true;
}