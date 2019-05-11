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
	cout << h <<" "<< a <<" "<< j - 1;
}
