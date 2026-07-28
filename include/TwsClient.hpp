// *******************************
// *** Autor: Reymon Dev       ***
// *** Datum: 23. Juni. 2026   ***
// *** Aktua: 23. Juni. 2026   ***
// *** Lizenz: AGPL-3-or-later ***
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

extern void* TwsClientConnection_00(void*);
extern void* TwsClientConnection_01(void*);
extern void* TwsClientConnection_02(void*);
extern void* TwsClientConnection_03(void*);
extern void* TwsClientConnection_04(void*);
extern void* TwsClientConnection_05(void*);
extern void* TwsClientConnection_06(void*);
extern void* TwsClientConnection_07(void*);
extern void* TwsClientConnection_08(void*);
extern void* TwsClientConnection_09(void*);
extern void* TwsClientConnection_0A(void*);
extern void* TwsClientConnection_0B(void*);
extern void* TwsClientConnection_0C(void*);
extern void* TwsClientConnection_0D(void*);
extern void* TwsClientConnection_0E(void*);
extern void* TwsClientConnection_0F(void*);
extern void* TwsClientConnection_10(void*);
extern void* TwsClientConnection_11(void*);
extern void* TwsClientConnection_12(void*);
extern void* TwsClientConnection_13(void*);
extern void* TwsClientConnection_14(void*);
extern void* TwsClientConnection_15(void*);
extern void* TwsClientConnection_16(void*);
extern void* TwsClientConnection_17(void*);
extern void* TwsClientConnection_18(void*);
extern void* TwsClientConnection_19(void*);
extern void* TwsClientConnection_1A(void*);
extern void* TwsClientConnection_1B(void*);
extern void* TwsClientConnection_1C(void*);
extern void* TwsClientConnection_1D(void*);
extern void* TwsClientConnection_1E(void*);
extern void* TwsClientConnection_1F(void*);

#endif // TWSCLIENT_HPP