build: one_card_by_page.pdf #nine_cards_by_page.pdf

one_card_by_page.pdf: one_card_by_page.tex
	#rubber -v --warn all --force --pdf one_card_by_page.tex
	pdflatex one_card_by_page.tex

nine_cards_by_page.pdf: nine_cards_by_page.tex
#	rubber -v --warn all --force --pdf nine_cards_by_page.tex
	pdflatex nine_cards_by_page.tex

images: 
	convert -density 300 one_card_by_page.pdf ./images/cards.png

clean:
	rm -f *.log *.aux *.pdf *~ latex/*~ deck/[1-9]* deck/*~
