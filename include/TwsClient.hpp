// *******************************
// *** Autor: Reymon Dev       ***
// *** Datum: 23. Juni. 2026   ***
// *** Aktua: 23. Juni. 2026   ***
// *** Lizenz: MIT             ***
// *******************************

#ifndef TWSCLIENT_HPP
#define TWSCLIENT_HPP

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
#include "TwsClient/Exception.hpp"
#include "TwsClient/Client.hpp"

// ************************
// *** Global Variables ***
// ************************

// *****************
// *** Functions ***
// *****************

extern void TwsClientConnection(int, void*);

#endif // TWSCLIENT_HPP