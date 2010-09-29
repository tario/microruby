#include "ruby.h"


VALUE error_catch(VALUE parm, VALUE err) {

	VALUE tos = rb_inspect(err);
	fprintf(stderr, "%s\n", RSTRING(tos)->ptr);
	
	return Qnil;
}

int main(int argc, char* argv[] ) {
	{
		RUBY_INIT_STACK
		ruby_init();
		
		VALUE result = rb_rescue( rb_eval_string, (VALUE)argv[1], error_catch,0);
		
		VALUE rb_result = rb_inspect(result);
		fprintf(stderr, "%s\n", RSTRING(rb_result)->ptr);
	    }
	return 0;
}
