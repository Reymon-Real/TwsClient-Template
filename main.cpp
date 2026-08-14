// *****************************
// *** Autor: Reymon Dev     ***
// *** Datum: 26. Juli. 2026 ***
// *** Aktua: 27. Juli. 2026 ***
// *** Lizenz: MIT           ***
// *****************************

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstddef>
#include <cstdint>
#include <thread>
#include <vector>

#include <TwsOrder.hpp>
#include <TwsClient.hpp>

int main(void) {

	// ************************************************
	// *** Basic use of threads for connect to IBKR ***
	//*************************************************

	constexpr int8_t MAX_CONNECTIONS = 1; // Max connections

	std::vector<std::thread> threads; // Vector of threads

	threads.reserve(MAX_CONNECTIONS); // Reserve the max connection

	// Create Threads
	for (size_t i = 0; i < MAX_CONNECTIONS; i = i + 1)
		threads.emplace_back(
			TwsClientConnection,
			0, // Number of the arguments
			nullptr // Structure
		);

	// Join in the threads
	for (size_t i = 0; i < MAX_CONNECTIONS; i = i + 1)
		threads[i].join();

	return EXIT_SUCCESS;
}