MAIN = Tests

clean:
	rm *.o
	rm *.hi
	rm $(MAIN)

run:
	ghc $(MAIN).hs
	./$(MAIN)

