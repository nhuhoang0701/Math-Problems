// Sum_k.cpp : This file checks if there exists a sub-array which has sum equal k given.
#include <iostream>
using namespace std;

int main()
{
	int n, k, verification, sum = 0, j = 0, i = 0;
	cin >> n;
	int* p = new int[n];
	for (int i = 0; i < n; i++)
		cin >> p[i];			// Enter the elements of the array

	cin >> k;	                    	// Enter the value we want to check

	for (i; i < n; i++)
	{
		j = i;								
		while (sum < k && j < n)	// Check sum of the sub-array until it is bigger than k
		{
			sum += p[j]; j++;
		}
		if (sum == k)
		{
			verification = 1; i; break;
		}
		verification = 0; sum = 0; j = 0;
	}
	if (verification==1) cout << verification << " " << i << " " << j - 1; // Print the verification, the index of 2 extemity of the qualified array
	else cout << verification;					       // Print h = 0 if such a sub-array exists
	delete p;
}
