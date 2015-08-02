dnl $Id$
dnl config.m4 for extension young

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(young, for young support,
dnl Make sure that the comment is aligned:
dnl [  --with-young             Include young support])

dnl Otherwise use enable:

 PHP_ARG_ENABLE(young, whether to enable young support,
dnl Make sure that the comment is aligned:
 [  --enable-young           Enable young support])

if test "$PHP_YOUNG" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-young -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/young.h"  # you most likely want to change this
  dnl if test -r $PHP_YOUNG/$SEARCH_FOR; then # path given as parameter
  dnl   YOUNG_DIR=$PHP_YOUNG
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for young files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       YOUNG_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$YOUNG_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the young distribution])
  dnl fi

  dnl # --with-young -> add include path
  dnl PHP_ADD_INCLUDE($YOUNG_DIR/include)

  dnl # --with-young -> check for lib and symbol presence
  dnl LIBNAME=young # you may want to change this
  dnl LIBSYMBOL=young # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $YOUNG_DIR/lib, YOUNG_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_YOUNGLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong young lib version or lib not found])
  dnl ],[
  dnl   -L$YOUNG_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(YOUNG_SHARED_LIBADD)

  PHP_NEW_EXTENSION(young, young.c, $ext_shared)
fi
