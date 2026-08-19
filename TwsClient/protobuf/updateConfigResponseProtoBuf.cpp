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

void TwsClient::updateConfigResponseProtoBuf(const protobuf::UpdateConfigResponse& updateConfigResponseProto) {
	printf("==== Update Config Response Begin ====\n");
	printf("%s\n", updateConfigResponseProto.DebugString().c_str());
	printf("==== Update Config Response End ====\n");
}