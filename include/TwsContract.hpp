// *******************************
// *** Autor: Reymon Dev       ***
// *** Datum: 08. August. 2026 ***
// *** Aktua: 08. August. 2026 ***
// *** Lizenz: AGPL-3-or-later ***
// *******************************

#ifndef TWSCONTRACT_HPP
#define TWSCONTRACT_HPP

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

#include "TwsClient.h"

// **************
// *** Clases ***
// **************

class TwsContract {

public:

	// Create a contract
	static Contract Create(const char*, const char*, const char*, const char*);

};

#endif // TWSCONTRACT_HPP