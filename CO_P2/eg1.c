#include<stdio.h>

int main() {
    function(3);
}

void function(int n) {
	if(n <= 0)
		return;
	for(int i = 0; i < n; i++) {
		function(n - 1);
		printf("i am %d!\n", i);
	}
}