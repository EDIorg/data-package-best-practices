allbooks: book1 book2

book1:
	echo "Make EML Best Practices book"
	cd guide-eml-bp; mv _bookquarto.yml _quarto.yml
	cd guide-eml-bp; quarto render
	cd guide-eml-bp; mv _quarto.yml _bookquarto.yml

book2:
	echo "Make Nontabular Data book"
	cd guide-special-cases; mv _bookquarto.yml _quarto.yml
	cd guide-special-cases; quarto render
	cd guide-special-cases; mv _quarto.yml _bookquarto.yml

movebooks:
	cp -r guide-eml-bp/_book/* _site/guide-eml-bp
	cp -r guide-special-cases/_book/* _site/guide-special-cases