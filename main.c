#include "ruby.h"


int main(int argc, char* argv[] ) {
	{
		RUBY_INIT_STACK
		ruby_init();
		rb_eval_string("eee");
	    }
	return 0;
}
