// *******************************
// *** Autor: Reymon Dev       ***
// *** Datum: 23. Juni. 2026   ***
// *** Aktua: 23. Juni. 2026   ***
// *** Lizenz: MIT             ***
// *******************************

#ifndef TWSCLIENT_TEMPLATE_EXCEPTION_HPP
#define TWSCLIENT_TEMPLATE_EXCEPTION_HPP

// ******************
// *** Enumerates ***
// ******************

// **************
// *** Unions ***
// **************

// **************
// *** Clases ***
// **************

class TwsClientException : public std::exception {

private:

	std::string m_msg;

public:

	TwsClientException(const std::string& msg): m_msg(msg) {}

	virtual const char* what() const noexcept {
		return this -> m_msg.c_str();
	}

};

// ***************
// *** Aliases ***
// ***************

using TwsClientException_t = TwsClientException;

#endif // TWSCLIENT_EXCEPTION_HPP