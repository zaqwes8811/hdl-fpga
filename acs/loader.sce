// This file is released under the 3-clause BSD license. See COPYING-BSD.
// Generated by builder.sce : Please, do not edit this file
// ----------------------------------------------------------------------------
//
lim_int_path = get_absolute_file_path('loader.sce');
//
// ulink previous function with same name
[bOK, ilib] = c_link('lim_int');
if bOK then
  ulink(ilib);
end
//
link(lim_int_path + filesep() + 'test_link.o' + getdynlibext());
link(lim_int_path + 'liblim_int' + getdynlibext(), ['lim_int'],'c');
// remove temp. variables on stack
clear lim_int_path;
clear bOK;
clear ilib;
// ----------------------------------------------------------------------------