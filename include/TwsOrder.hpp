// *******************************
// *** Autor: Reymon Dev       ***
// *** Datum: 08. August. 2026 ***
// *** Aktua: 08. August. 2026 ***
// *** Lizenz: AGPL-3-or-later ***
// *******************************

#ifndef TWSORDER_HPP
#define TWSORDER_HPP

// *****************
// *** Libraries ***
// *****************

#include <cstdio>
#include <cstdlib>
#include <cstddef>
#include <cstdint>
#include <string>
#include <ctime>
#include <memory>

#include <IBKR/TwsSocketClient/EWrapper.h>
#include <IBKR/TwsSocketClient/EClient.h>
#include <IBKR/TwsSocketClient/EDecoder.h>
#include <IBKR/TwsSocketClient/EReader.h>
#include <IBKR/TwsSocketClient/EClientSocket.h>
#include <IBKR/TwsSocketClient/Contract.h>
#include <IBKR/TwsSocketClient/Order.h>
#include <IBKR/TwsSocketClient/CommonDefs.h>

// **************
// *** Clases ***
// **************

class TwsOrder {

public:

	// Create a limit orders
	static Order LimitOrder(std::string, double, Decimal);

};

#endif // TWSORDER_HPP