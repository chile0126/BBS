library (devtools)
library (magrittr)
library (tidyverse)
library (googlesheets4)
library (googledrive)
library (raster)
library (rgdal)
library (plotrix)
library (kochile)

#建立一個function
use_r ('get_all_data')

#add the package that this package needs, only one by one
#'stringr', 'magrittr', 'tidyverse', 'googlesheets4', 'googledrive', 'raster', 'rgdal', 'plotrix'
use_package ()

#test the function whether it works
load_all ()
get_all_data ()
check ()

#add object document, after finishing
document ()
?get_all_data
check ()
install()

#add test file to test
use_test ('get_all_data')
test ()


check ()
document ()
load_all ()
use_git ()
use_readme_rmd ()
build_readme ()
check ()
install ()
