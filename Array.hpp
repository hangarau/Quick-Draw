#include <vector>
#include <stddef.h>

template<typename T, size_t N>
class Array
{
public:
    Array(const T(&_array)[N]){for (const T& element : _array){data.push_back(element)}};
    T& operator[](size_t n){return data[n];}
    const T& operator[](size_t n) const{return data[n];}
private:
    std::vector<T>;
};
