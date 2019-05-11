// Experiments.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main()
{
	int n , k, sum = 0, j = 0, h, a; cin >> n;
	int p[100];
	for (int i = 0; i < n; i++)
		cin >> p[i];
	cin >> k;
	for (int i = 0; i < n; i++)
	{
		j = i;
		while (sum < k && j<n)
		{
			sum += p[j]; a = i; j++;
		}
		if (sum == k)
		{
			h = 1; break;
		}
		h = 0; sum = 0; j = 0;
	}
	cout << h<<" "<<a<<" "<<j-1;
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
