# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = Filesusedinwebprojects
SOURCEDIR     = source
BUILDDIR      = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: patch

patch:
	for file in $$(find .patches -type f -name *.patch); do \
		patch -p1 -d "$$(python -c $$'import sysconfig; print(sysconfig.get_path(\'purelib\'))')" < $$file || exit 1; \
	done

.PHONY: github

github:
	$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)" -a $(O)
	rm -rf docs/
	mv build/html docs

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
