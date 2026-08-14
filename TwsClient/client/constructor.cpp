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

TwsClient::TwsClient():

	m_osSignal(2000), // 2-seconds timeout
	m_pClient(new EClientSocket(this, &m_osSignal)),
	m_state(ST_CONNECT),
	m_sleepDeadline(0),
	m_orderId(0),
	m_extraAuth(false),
	m_bboExchange("")

{}