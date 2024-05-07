
#include <stdio.h>
#include <emscripten.h>

static int	someVal = 0;
void test(void) {
	someVal++;
}

int main(int argc,char* *argv){
	someVal++;

	emscripten_exit_with_live_runtime();
	return 0;
}
