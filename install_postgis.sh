sudo apt-get install postgresql postgresql-contrib
sudo apt-get install binutils libproj-dev gdal-bin

# GEOS
wget http://download.osgeo.org/geos/geos-3.4.2.tar.bz2
tar xjf geos-3.4.2.tar.bz2
cd geos-3.4.2
./configure
make
sudo make install
cd ..

# PROJ.4
wget http://download.osgeo.org/proj/proj-4.9.1.tar.gz
wget http://download.osgeo.org/proj/proj-datumgrid-1.5.tar.gz
tar xzf proj-4.9.1.tar.gz
cd proj-4.9.1/nad
tar xzf ../../proj-datumgrid-1.5.tar.gz
cd ..
./configure
make
sudo make install
cd ..

# GDAL
wget http://download.osgeo.org/gdal/1.11.2/gdal-1.11.2.tar.gz
tar xzf gdal-1.11.2.tar.gz
cd gdal-1.11.2
./configure
make
sudo make install
cd ..

# Postgis
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
sudo apt-get install postgis
