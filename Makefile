LDFLAGS=-shared -ldl

lib/stderred.so: stderred.c
	gcc stderred.c -D_GNU_SOURCE -std=gnu99 -Wall -fPIC -m32 $(LDFLAGS) -o lib/stderred.so

lib64/stderred.so: stderred.c
	gcc stderred.c -D_GNU_SOURCE -std=gnu99 -Wall -fPIC -m64 $(LDFLAGS) -o lib64/stderred.so

both: lib/stderred.so lib64/stderred.so

clean:
	rm -fv lib*/*.so
