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

void TwsClient::nextValidId(OrderId orderId) {

	m_orderId = orderId;
	m_state = TwsClientState_orderoperations;

}