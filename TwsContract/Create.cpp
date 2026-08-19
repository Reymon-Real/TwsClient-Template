// *******************************
// *** Autor: Reymon Dev       ***
// *** Datum: 11. Juli. 2026   ***
// *** Aktua: 11. Juli. 2026   ***
// *** Lizenz: AGPL-3-or-later ***
// *******************************

// *****************
// *** Libraries ***
// *****************

#include <TwsContract.hpp>

// ***************************
// *** Send Order Function ***
// ***************************

Contract TwsContract::Create(const char* symbol, const char* secType, const char* currency, const char* exchange) {

	// *****************
	// *** Variables ***
	// *****************

	Contract contract;

	// **********************
	// *** Order Settings ***
	// **********************

	contract.symbol   = symbol;
	contract.secType  = secType;
	contract.currency = currency;
	contract.exchange = exchange;

	return contract;
}