LOCALE_KF5_DIR = $(DESTDIR)/usr/share/locale
INSTALL = install -d
CP = cp -rf
RM = -rm -rf

all:

install: local

clear:
	$(RM) $(LOCALE_KF5_DIR)/*/LC_MESSAGES/krusader.mo

local:
	$(INSTALL) $(LOCALE_KF5_DIR)
	$(CP) l10n/* $(LOCALE_KF5_DIR)

uninstall: clear
