#include "header.h"
#include <cmath>

int dectooct(int x)
{
	int oct = 0, ost = 0, i = 0;
	while (x)
	{
		ost = x - ((x / 8) * 8);
		x = x / 8;
		oct = oct + ost * pow(10, i);
		i++;
	}
	return oct;
}
