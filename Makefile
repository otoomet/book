# build as gitbook
#pushd src; make; popd;

book:
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook', quiet=T)";

pdf:
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book', quiet=T)";

all: pdf book

# publish the built book on ovid: faculty.washington.edu/otoomet/info201-book
# first copy to $HOME/www/ovid, thereafter the whole ovid to the ovid server
publish:
	rsync -rlptoDvuK build/ $(HOME)/www/ovid/info201-book && \
	rsync -rlptoDvuK $(HOME)/www/ovid/ ovid:public_html/

serve:
	Rscript -e "bookdown::serve_book(dir='.', output_dir='build', preview=TRUE, in_session=TRUE)";

# push to info201.github.io
deploy: #all
	git subtree push --prefix build https://github.com/info201/info201.github.io master
