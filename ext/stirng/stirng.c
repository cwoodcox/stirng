#include <ruby.h>

static VALUE stirng_distance(VALUE str1, VALUE str2) {
  str1 = rb_str_strip_bang(str1);
  str2 = rb_str_strip_bang(str2);

  if (str1 == str2) {
    return 1.0;
  }
}

void Init_stirng(void) {
  VALUE module = rb_define_module("Stirng");

  rb_define_module_function(module, "distance", stirng_distance, 2);
}

