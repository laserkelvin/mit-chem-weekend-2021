
MAIN = slides.md
CSS = css/poster.css
SYNTAX = solarized-light
SCRIPTS = js/menu.js,js/tableofcontents.js
STATIC_DIR = _build
PDF_PATH = slides.pdf
ASSETS = css,figures

FLAGS = $(MAIN) --theme $(CSS) --scripts $(SCRIPTS) --highlight-theme $(SYNTAX)

present:
	reveal-md $(FLAGS) -w

pdf: 
	reveal-md $(FLAGS) --print $(PDF_PATH) 

static:
	reveal-md $(FLAGS) --static $(STATIC_DIR) --static-dirs=$(ASSETS)

develop: present -w


setup:
	npm -g install reveal-md

clean: 
	rm -rf $(PDF_PATH) $(STATIC_DIR)

