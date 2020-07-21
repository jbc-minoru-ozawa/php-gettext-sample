%.mo: %.po
	msgfmt -o $@ $<

CATALOGS =	\
	locale/en_US/LC_MESSAGES/messages.mo	\
	locale/ja_JP/LC_MESSAGES/messages.mo

SRCS =	\
	gettext_sample.php	\
	gettext_sample2.php

all: messages.po $(CATALOGS)

clean:
	rm -f messages.po $(CATALOGS)

messages.po: $(SRCS)
	xgettext -l php --from-code=utf-8 $^
