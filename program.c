#include <stdio.h>

extern int sum_squares(int, int);
extern unsigned int square_root_approx(unsigned int);

int main() {
	int i, j;
	scanf("%d", &i);
	scanf("%d", &j);
	// must scanf twice to get two inputs
	int x = sum_squares(i, j);
	int y = square_root_approx(x);
	return 0;
}
