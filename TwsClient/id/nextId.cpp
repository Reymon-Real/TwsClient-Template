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

OrderId TwsClient::nextId() {

	m_orderId = m_orderId + 1;

	return m_orderId;
}