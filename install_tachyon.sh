#! /bin/sh

# GET TACHYON, INSTALL AND START IT
wget http://tachyon-project.org/downloads/files/0.8.2/tachyon-0.8.2-bin.tar.gz
tar xvfz tachyon-0.8.2-bin.tar.gz
ln -s tachyon-0.8.2 tachyon
cd tachyon

cp conf/tachyon-env.sh.template conf/tachyon-env.sh
./bin/tachyon format
./bin/tachyon-start.sh local

# check to see if tachyon is running
# ./bin/tachyon runTest Basic CACHE_THROUGH

# more comprehensive tests
# ./bin/tachyon runTests

# to stop tachyon
# ./bin/tachyon-stop.sh

# the web-ui can be accessed here:
# http://localhost:19999/home
