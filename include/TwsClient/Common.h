// *******************************
// *** Autor: Reymon Dev       ***
// *** Datum: 25. Mai. 2026    ***
// *** Aktua: 11. Juli. 2026    ***
// *** Lizenz: AGPL-3-or-later ***
// *******************************

#ifndef TWSCLIENT_TEMPLATE_COMMON_H
#define TWSCLIENT_TEMPLATE_COMMON_H

// ***************
// *** Aliases ***
// ***************

#define TwsClient_zero (0)               // Macro alias for 0
#define TwsClient_instrument_size (255)  // Max length root of the files
#define TwsClient_max_instruments (32)   // Number max of parallel connection supported for Tws

typedef void* TwsClientHandle;

// ******************
// *** Enumerates ***
// ******************

typedef enum TwsClientConnection {

	TWSCLIENTCONNECTION_00 = 0x00,
	TWSCLIENTCONNECTION_01 = 0x01,
	TWSCLIENTCONNECTION_02 = 0x02,
	TWSCLIENTCONNECTION_03 = 0x03,
	TWSCLIENTCONNECTION_04 = 0x04,
	TWSCLIENTCONNECTION_05 = 0x05,
	TWSCLIENTCONNECTION_06 = 0x06,
	TWSCLIENTCONNECTION_07 = 0x07,

	TWSCLIENTCONNECTION_08 = 0x08,
	TWSCLIENTCONNECTION_09 = 0x09,
	TWSCLIENTCONNECTION_0A = 0x0A,
	TWSCLIENTCONNECTION_0B = 0x0B,
	TWSCLIENTCONNECTION_0C = 0x0C,
	TWSCLIENTCONNECTION_0D = 0x0D,
	TWSCLIENTCONNECTION_0E = 0x0E,
	TWSCLIENTCONNECTION_0F = 0x0F,

	TWSCLIENTCONNECTION_10 = 0x10,
	TWSCLIENTCONNECTION_11 = 0x11,
	TWSCLIENTCONNECTION_12 = 0x12,
	TWSCLIENTCONNECTION_13 = 0x13,
	TWSCLIENTCONNECTION_14 = 0x14,
	TWSCLIENTCONNECTION_15 = 0x15,
	TWSCLIENTCONNECTION_16 = 0x16,
	TWSCLIENTCONNECTION_17 = 0x17,

	TWSCLIENTCONNECTION_18 = 0x18,
	TWSCLIENTCONNECTION_19 = 0x19,
	TWSCLIENTCONNECTION_1A = 0x1A,
	TWSCLIENTCONNECTION_1B = 0x1B,
	TWSCLIENTCONNECTION_1C = 0x1C,
	TWSCLIENTCONNECTION_1D = 0x1D,
	TWSCLIENTCONNECTION_1E = 0x1E,
	TWSCLIENTCONNECTION_1F = 0x1F

} TwsClientConnection_t;

typedef enum TwsClientState {

	TwsClientState_connect,
	TwsClientState_tickdataoperation,
	TwsClientState_tickdataoperation_ack,
	TwsClientState_tickoptioncomputationoperation,
	TwsClientState_tickoptioncomputationoperation_ack,
	TwsClientState_delayedtickdataoperation,
	TwsClientState_delayedtickdataoperation_ack,
	TwsClientState_marketdepthoperation,
	TwsClientState_marketdepthoperation_ack,
	TwsClientState_realtimebars,
	TwsClientState_realtimebars_ack,
	TwsClientState_marketdatatype,
	TwsClientState_marketdatatype_ack,
	TwsClientState_historicaldatarequests,
	TwsClientState_historicaldatarequests_ack,
	TwsClientState_optionsoperations,
	TwsClientState_optionsoperations_ack,
	TwsClientState_contractoperation,
	TwsClientState_contractoperation_ack,
	TwsClientState_marketscanners,
	TwsClientState_marketscanners_ack,
	TwsClientState_fundamentals,
	TwsClientState_fundamentals_ack,
	TwsClientState_bulletins,
	TwsClientState_bulletins_ack,
	TwsClientState_accountoperations,
	TwsClientState_accountoperations_ack,
	TwsClientState_orderoperations,
	TwsClientState_orderoperations_ack,
	TwsClientState_ocasamples,
	TwsClientState_ocasamples_ack,
	TwsClientState_conditionsamples,
	TwsClientState_conditionsamples_ack,
	TwsClientState_bracketsamples,
	TwsClientState_bracketsamples_ack,
	TwsClientState_hedgesamples,
	TwsClientState_hedgesamples_ack,
	TwsClientState_testalgosamples,
	TwsClientState_testalgosamples_ack,
	TwsClientState_faordersamples,
	TwsClientState_faordersamples_ack,
	TwsClientState_faoperations,
	TwsClientState_faoperations_ack,
	TwsClientState_displaygroups,
	TwsClientState_displaygroups_ack,
	TwsClientState_miscelaneous,
	TwsClientState_miscelaneous_ack,
	TwsClientState_cancelorder,
	TwsClientState_cancelorder_ack,
	TwsClientState_familycodes,
	TwsClientState_familycodes_ack,
	TwsClientState_symbolsamples,
	TwsClientState_symbolsamples_ack,
	TwsClientState_reqmktdepthexchanges,
	TwsClientState_reqmktdepthexchanges_ack,
	TwsClientState_reqnewsticks,
	TwsClientState_reqnewsticks_ack,
	TwsClientState_reqsmartcomponents,
	TwsClientState_reqsmartcomponents_ack,
	TwsClientState_newsproviders,
	TwsClientState_newsproviders_ack,
	TwsClientState_reqnewsarticle,
	TwsClientState_reqnewsarticle_ack,
	TwsClientState_reqhistoricalnews,
	TwsClientState_reqhistoricalnews_ack,
	TwsClientState_reqheadtimestamp,
	TwsClientState_reqheadtimestamp_ack,
	TwsClientState_reqhistogramdata,
	TwsClientState_reqhistogramdata_ack,
	TwsClientState_reroutecfd,
	TwsClientState_reroutecfd_ack,
	TwsClientState_marketrule,
	TwsClientState_marketrule_ack,
	TwsClientState_pnl,
	TwsClientState_pnl_ack,
	TwsClientState_pnlsingle,
	TwsClientState_pnlsingle_ack,
	TwsClientState_contfut,
	TwsClientState_contfut_ack,
	TwsClientState_ping,
	TwsClientState_ping_ack,
	TwsClientState_reqhistoricalticks,
	TwsClientState_reqhistoricalticks_ack,
	TwsClientState_reqtickbytickdata,
	TwsClientState_reqtickbytickdata_ack,
	TwsClientState_whatifsamples,
	TwsClientState_whatifsamples_ack,
	TwsClientState_idle,
	TwsClientState_ibkratssample,
	TwsClientState_ibkratssample_ack,
	TwsClientState_wsh,
	TwsClientState_wsh_ack

} TwsClientState_t;

// **************
// *** Unions ***
// **************

// ******************
// *** Structures ***
// ******************

// ************************
// *** Global Variables ***
// ************************

// *****************
// *** Functions ***
// *****************

#endif // TWSCLIENT_TEMPLATE_COMMON_H