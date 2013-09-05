#
# BUILD BOOTSWATCH SWATCH
#

OUTPUT_PATH = swatch

API_MANUAL = ../vixo-api-manual/themes/sphinx-bootstrap/
API_MANUAL_MIN = ../vixo-api-manual/themes/sphinx-bootstrap/static/

MANUAL = ../manual/themes/sphinx-bootstrap/
MANUAL_MIN = ../manual/themes/sphinx-bootstrap/static/

WP_MASTER = /usr/share/wordpress-master/wp-content/themes/vixo-bootstrap/library/css/

HN = ../hypernumbers/lib/hypernumbers-1.0/priv/core_install/docroot/bootstrap/css/

VX_GIT = ../vixo-bootstrap/library/css/

vixo:
	cp ./swatch/bootstrap.css $(API_MANUAL)raw_css/bootstrap-default.css
	cp ./swatch/bootstrap.min.css $(API_MANUAL)raw_css/bootstrap-default.min.css
	cat $(API_MANUAL)raw_css/bootstrap-default.css > $(API_MANUAL_MIN)sphinx-bootstrap.min.css
	echo "/* style.css */\n" >> $(API_MANUAL_MIN)sphinx-bootstrap.min.css
	cat $(API_MANUAL)raw_css/style.css >> $(API_MANUAL_MIN)sphinx-bootstrap.min.css
	echo "// jquery.js\n" > $(API_MANUAL_MIN)sphinx.min.js
	cat $(API_MANUAL)raw_js/jquery.js >> $(API_MANUAL_MIN)sphinx.min.js
	echo "// underscore.js\n" >> $(API_MANUAL_MIN)sphinx.min.js
	cat $(API_MANUAL)raw_js/underscore.js >> $(API_MANUAL_MIN)sphinx.min.js
	echo "// doctools.js\n" >> $(API_MANUAL_MIN)sphinx.min.js
	cat $(API_MANUAL)raw_js/doctools.js >> $(API_MANUAL_MIN)sphinx.min.js
	echo "// searchtools.js\n" >> $(API_MANUAL_MIN)sphinx.min.js
	cat $(API_MANUAL)raw_js/searchtools.js >> $(API_MANUAL_MIN)sphinx.min.js
	echo "// bootstrap-dropdown.js\n" >> $(API_MANUAL_MIN)sphinx.min.js
	cat $(API_MANUAL)raw_js/bootstrap-dropdown.js >> $(API_MANUAL_MIN)sphinx.min.js
	chown -R gordon.gordon $(API_MANUAL)*
	cp ./swatch/fonts/* $(API_MANUAL_MIN)fonts/
	cp -R ./swatch/icons/* $(API_MANUAL_MIN)icons/
	chown gordon.gordon $(API_MANUAL_MIN)fonts/*
	chown -R gordon.gordon $(API_MANUAL_MIN)icons/*
	cp ./swatch/bootstrap.css $(MANUAL)raw_css/bootstrap-default.css
	cp ./swatch/bootstrap.min.css $(MANUAL)raw_css/bootstrap-default.min.css
	cat $(MANUAL)raw_css/bootstrap-default.css > $(MANUAL_MIN)sphinx-bootstrap.min.css
	echo "/* style.css */\n" >> $(MANUAL_MIN)sphinx-bootstrap.min.css
	cat $(MANUAL)raw_css/style.css >> $(MANUAL_MIN)sphinx-bootstrap.min.css
	echo "// jquery.js\n" > $(MANUAL_MIN)sphinx.min.js
	cat $(MANUAL)raw_js/jquery.js >> $(MANUAL_MIN)sphinx.min.js
	echo "// underscore.js\n" >> $(MANUAL_MIN)sphinx.min.js
	cat $(MANUAL)raw_js/underscore.js >> $(MANUAL_MIN)sphinx.min.js
	echo "// doctools.js\n" >> $(MANUAL_MIN)sphinx.min.js
	cat $(MANUAL)raw_js/doctools.js >> $(MANUAL_MIN)sphinx.min.js
	echo "// searchtools.js\n" >> $(MANUAL_MIN)sphinx.min.js
	cat $(MANUAL)raw_js/searchtools.js >> $(MANUAL_MIN)sphinx.min.js
	echo "// bootstrap-dropdown.js\n" >> $(MANUAL_MIN)sphinx.min.js
	cat $(MANUAL)raw_js/bootstrap-dropdown.js >> $(MANUAL_MIN)sphinx.min.js
	chown -R gordon.gordon $(MANUAL)*
	cp ./swatch/fonts/* $(MANUAL_MIN)fonts/
	cp -R ./swatch/icons/* $(MANUAL_MIN)icons/
	chown gordon.gordon $(MANUAL_MIN)fonts/*
	chown -R gordon.gordon $(MANUAL_MIN)icons/*
	cp ./swatch/bootstrap.css $(WP_MASTER)bootstrap.css
	chown root.www-data $(WP_MASTER)*.css
	cp ./swatch/fonts/* $(WP_MASTER)fonts/
	cp -R ./swatch/icons/* $(WP_MASTER)icons/
	chown root.www-data $(WP_MASTER)fonts/*
	chown -R root.www-data $(WP_MASTER)icons/*
	cp ./swatch/bootstrap.css $(HN)bootstrap.css
	cp ./swatch/bootstrap.min.css $(HN)bootstrap.min.css
	chown gordon.gordon $(HN)*.css
	cp ./swatch/fonts/* $(HN)fonts/
	cp -R ./swatch/icons/* $(HN)icons/
	chown gordon.gordon $(HN)fonts/*
	chown -R gordon.gordon $(HN)icons/*
	cp ./swatch/bootstrap.css $(VX_GIT)bootstrap.css
	cp ./swatch/bootstrap.min.css $(VX_GIT)bootstrap.min.css
	chown gordon.gordon $(VX_GIT)*.css
	cp ./swatch/fonts/* $(VX_GIT)fonts/
	cp -R ./swatch/icons/* $(VX_GIT)icons/
	chown gordon.gordon $(VX_GIT)fonts/*
	chown -R gordon.gordon $(VX_GIT)icons/*

