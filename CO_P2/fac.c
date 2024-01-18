#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<ctype.h>
#include<string.h>
#include<time.h>

int main() {
    int n;
    scanf("%d", &n);
    int array[100] = {0};
    array[0] = 1;
    int a = 2, pos = 0;
    
    for(int i = 2; i <= n; i++) {
        // mul;
        int t = 0;
        for(int j = 0; j <= pos; j++) {
            t = array[j] * i + t;
            array[j] = t % 10;
            t = t/10;
            if(j == pos && t != 0) {
                pos++;
            }
        }
    }
    
    for(int i = pos; i >= 0; i--) {
        printf("%d", array[i]);
    }
}