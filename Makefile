allbooks: book1 book2 #book3

book1:
	echo "Make current EML Best Practices book"
	cd guide-eml-bp; mv _bookquarto.yml _quarto.yml
	cd guide-eml-bp; quarto render
	cd guide-eml-bp; mv _quarto.yml _bookquarto.yml

book2:
	echo "Make current Nontabular Data book"
	cd guide-special-cases; mv _bookquarto.yml _quarto.yml
	cd guide-special-cases; quarto render
	cd guide-special-cases; mv _quarto.yml _bookquarto.yml

# book3:
# 	echo "Make archived EML Best Practices book"
# 	cd archive/guide-eml-bp; mv _bookquarto.yml _quarto.yml
# 	cd archive/guide-eml-bp; quarto render
# 	cd archive/guide-eml-bp; mv _quarto.yml _bookquarto.yml

movebooks:
	cp -r guide-eml-bp/_book/* _site/guide-eml-bp
	cp -r guide-special-cases/_book/* _site/guide-special-cases
#	cp -r archive/guide-eml-bp/_book/* _site/archive/guide-eml-bp