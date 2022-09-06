main: utilities.h ppm.h mrn.h sppm.h spmf.h init.h
	g++ -fdiagnostics-color=always -g $(CURDIR)/*.cpp -o main
	./main

.PHONY: clean
clean:
	-rm *.o main