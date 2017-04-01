SRC = historieta relatorio

all: $(SRC)

$(SRC):
	pandoc $@.md -f markdown -t docx -o dist/$@.docx

