#include "ruby.h"


int main(int argc, char* argv[] ) {
	{
		RUBY_INIT_STACK
		ruby_init();
		
		rb_rescue( rb_eval_string, (VALUE)argv[1], 0,0);
	    }
	return 0;
}
