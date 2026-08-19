// *****************************
// *** Autor: Reymon Dev     ***
// *** Datum: 26. Juli. 2026 ***
// *** Aktua: 27. Juli. 2026 ***
// *** Lizenz: MIT           ***
// *****************************

// *****************
// *** Libraries ***
// *****************

#include <cstdio>
#include <TwsClient.hpp>

// ****************
// *** Function ***
// ****************

void TwsClient::configResponseProtoBuf(const protobuf::ConfigResponse& configResponseProto) {
	printf("==== Config Response Begin ====\n");
	printf("%s\n", configResponseProto.DebugString().c_str());
	printf("==== Config Response End ====\n");
}