#include <stdio.h>
#include "foo.h"
#include "bar.h"
#include "bletch.h"
#include "blurga.h"

int main( void )
{
  fputs( "Calling foo: ", stdout );
  foo();
  fputs( "Calling bar: ", stdout );
  bar();
  fputs( "Calling bletch: ", stdout );
  bletch();
  fputs( "Calling blurga: ", stdout );
  blurga();
}

