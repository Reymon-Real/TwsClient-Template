//###############################
//### Autor: Reymon Dev       ###
//### Datum: 12. August. 2026 ###
//### Aktua: 12. August. 2026 ###
//### Lizenz: MIT             ###
//###############################

//#################
//### Libraries ###
//#################

#include <iostream>
#include <ctime>
#include <TwsClient.hpp>

//################
//### Function ###
//################

void TwsClient::start(int argc, void* argv) {

	// ****************
	// *** Messages ***
	// ****************

	std::cout << "Number of arguments: " << argc << std::endl;
	std::cout << "Pointer to argument: " << argv << std::endl;

	// ****************************
	// *** Initialize Variables ***
	// ****************************

	time_t now = time(NULL);

	// ******************************************
	// *** Machine state for select operation ***
	// ******************************************

	switch (m_state) {

		case ST_PING: {
			reqCurrentTime();
			break;
		}

		case ST_PING_ACK: {
		
			if(m_sleepDeadline < now) {
				disconnect();
				return;
			}
			
			break;
		}
		
		case ST_IDLE: {
		
			if(m_sleepDeadline < now) {
				m_state = ST_PING;
				return;
			}
		
			break;
		}

	}

	// *********************
	// *** Wait Response ***
	// *********************

	m_osSignal.waitForSignal();
	errno = 0;
	m_pReader->processMsgs();

}