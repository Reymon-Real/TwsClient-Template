// *******************************
// *** Autor: Reymon Dev       ***
// *** Datum: 11. Juli. 2026   ***
// *** Aktua: 11. Juli. 2026   ***
// *** Lizenz: AGPL-3-or-later ***
// *******************************

// *****************
// *** Libraries ***
// *****************

#include <TwsOrder.hpp>

// ***************************
// *** Send Order Function ***
// ***************************

Order TwsOrder::Limit(std::string action, Decimal quantity, double lmtPrice) {

	// *****************
	// *** Variables ***
	// *****************

	Order order;

	// **********************
	// *** Order Settings ***
	// **********************

	order.action        = action;
	order.orderType     = "LMT";
	order.totalQuantity = quantity;
	order.lmtPrice      = lmtPrice;
	order.tif           = "DAY";

	return order;
}