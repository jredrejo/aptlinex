EXTRA_DIST = gambas-apt TODO AUTHORS COPYING


all:
	@(cd $(srcdir); d=`pwd`; \
	  for p in `cat PROJECTS`; do \
	    echo "Compiling $$p..."; cd $$d/$$p; \
	    for y in .lang/*.po; do \
	    	i=`basename $$y .po`; \
	    	msgfmt $$y -o .lang/$$i.mo; \
	    done; \
	    $(GAMBAS_path)/gbc2 -agtp ; \
	    $(GAMBAS_path)/gba2; \
	    rm -rf .gambas; \
	  done)	  


install-exec-local:
	@(echo "Installing binary files"; \
	mkdir -p $(DESTDIR)$(bindir); \
	cd $(srcdir); for p in `cat PROJECTS`; do echo $$p; $(INSTALL) $$p/$$p.gambas $(DESTDIR)$(bindir); done)

uninstall-local:
	@(echo "Removing compiled files..."; \
	cd $(srcdir); for p in `cat PROJECTS`; do rm -f $(DESTDIR)$(bindir)/$$p.gambas; done )	
	

dist-hook:
	@(cd $(distdir); \
	rm -rf `find . -name ".gambas" -o -name ".lock" -o -name ".xvpics" -o -name "*~" -o -name "*.out"  -o -name "*.pot" -o -name "*.gambas" -o -name "core.*" -o -name "stamp*" -o -name "*.mo" -o -name ".svn"`;)

clean-local:
	@(rm -rf `find . -name ".gambas" -o -name ".lock" -o -name ".xvpics" -o -name "*~" -o -name "*.out"  -o -name "*.pot" -o -name "*.gambas" -o -name "core.*" -o -name "stamp*" -o -name "*.mo" -o -name ".svn"`;)




