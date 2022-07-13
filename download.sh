# A project to download the one-off comic "Alice Grove" by Jeph Jacques.  The
# project is hosted as simple html with images, split into 4 parts of about 200
# images each.  First the tool `wget` can download the page, follow the link to
# the next, and repeat.  Second, the files need to be renamed into numerical
# order to prevent weird sorting like 1, 10, 11, 100, etc, which can be done via
# a bash loop.  
#
# Finally (not scripted here) the images can be imported to Gimp as layers.
# After some layer alignment and canvas re-sizing (mainly necessitated by the
# differently-sized image `aglogo.png`), the layers may be re-exported as a PDF
# for viewing on a tablet.

wget -r -nd https://www.questionablecontent.net/alice1.html
for F in $(ls *.{png,jpg}); do N="00000${F}"; mv $F "${N: -9}"; done
