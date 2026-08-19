//###############################
//### Autor: Reymon Dev       ###
//### Datum: 12. August. 2026 ###
//### Aktua: 12. August. 2026 ###
//### Lizenz: MIT             ###
//###############################

//#################
//### Libraries ###
//#################

#include <stdio.h>
#include <cstddef>
#include <chrono>
#include <thread>
#include <TwsClient.hpp>

//#################
//### Constants ###
//#################

#define MAX_ATTEMPTS (50) // Max number of disconnections
#define SLEEP_TIME   (10) // 10 seconds for sleep

//############################################
//### Function for the connect to the IBKR ###
//############################################

void TwsClientConnection(int argc, void* argv) {

	// ************************
	// *** Define Variables ***
	// ************************

	size_t attempt = 0;   // Counter of the disconnection
	TwsClient client; // Class of client for connecto to IBKR

	// ***********************
	// *** Connection Loop ***
	// ***********************

	while(true) {

		// --------------------
		// --- Control Loop ---
		// --------------------

		++attempt;

		// ------------------------------
		// --- Set Values for connect ---
		// ------------------------------

		const char* host = "127.0.0.1"; // Base host to connect
		int port         = 7496;        // Port of the host to connect
		int userId       = 0;           // User ID (unique for connection)

		// ----------------------
		// --- Set Connection ---
		// ----------------------

		client.connect(
			host,  // Host IP
			port,  // Port to coonect
			userId // Unique number for connection,
		);

		// -----------------
		// --- Main loop ---
		// -----------------

		while (client.isConnected())
			client.start(
				0, 		// Number of params
				nullptr // Pointer to structure of Parameters
			);

		// -------------------------
		// --- Conditional break ---
		// -------------------------

		if (attempt >= MAX_ATTEMPTS) break; // Break loop if disconnection equal to 50

		// ----------------------------------
		// --- Sleep Thread if disconnect ---
		// ----------------------------------

		std::this_thread::sleep_for(
			std::chrono::seconds(SLEEP_TIME) // Sleep thread while IB Gateway or Trader Work Station log in
		);
	}
}