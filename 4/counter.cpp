#include "header.h"
#include <cmath>

int counter(int x)
{
	int count = 0;
	while (x)
	{
		if ((x % 10) % 2 == 0)
			count++;
		x = x / 10;
	}
	return count;
}
