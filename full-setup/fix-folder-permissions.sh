##!/bin/sh

# exit immediately if a command exits with a non-zero status
set -e

RUNTIME_DATA=./researchspace
OXIGRAPH_DATA=./data_oxigraph

echo "Creating storage folders"

mkdir -p ${RUNTIME_DATA}/data/images/file
mkdir -p ${RUNTIME_DATA}/data/tmp/file

echo "Changing ownership of the ResearchSpace runtime-data folder: ${RUNTIME_DATA}"

# change ownership of the runtime-data folder to uid/guid that is used inside researchspace docker container
sudo chown -R 100:0 ${RUNTIME_DATA}

# make sure that folder has correct write permissions and new files that are created inside the folder inherit ownership
sudo chmod -R g+ws ${RUNTIME_DATA}

echo "Creating oxigraph store folder: ${OXIGRAPH_DATA}"

# create folder for blazegraph journal file
mkdir -p ${OXIGRAPH_DATA}

# change ownership of the blazegraph data folder to uid/guid that is used inside blazegraph docker container
sudo chown -R $USER:$USER ${OXIGRAPH_DATA}
sudo chmod -R 775 ${OXIGRAPH_DATA}

# make sure that folder has correct write permissions and new files that are created inside the folder inherit ownership
sudo chmod -R g+ws ${RUNTIME_DATA}