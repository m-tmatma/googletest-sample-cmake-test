#include <string>
#include <exception>

class DivideByZeroException : public std::exception
{
public:
	explicit DivideByZeroException(const char* message)
#ifdef _MSC_VER
        : std::exception(message)
#else
        : std::exception()
#endif
    {
    }
};

class Calc
{
public:
	int Add(int a, int b);
	int Subtract(int a, int b);
	int Divide(int a, int b);
};
