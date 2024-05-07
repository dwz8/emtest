emcc ./test.c ^
-g3 ^
--source-map-base ./ ^
-gsource-map ^
-s ALLOW_MEMORY_GROWTH=1 ^
-s ENVIRONMENT=web,worker ^
-s MODULARIZE=1 ^
-s "EXPORT_NAME='wasmMod'" ^
--shell-file ./test_template.html ^
-s EXPORTED_FUNCTIONS="['_malloc','_free','_main','_test']" ^
-s EXPORTED_RUNTIME_METHODS=ccall ^
-o test.html

