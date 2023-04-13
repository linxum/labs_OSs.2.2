#include <iostream>
#include "header.h"

using namespace std;

int main()
{
	int n;
	cout << "Enter a number: ";
	cin >> n;
	int oct_n = dectooct(n);
	cout << "Oct: " << oct_n << endl;
	cout << counter(oct_n) << endl;
}
