docker run --workdir /srv --name sae51-ub --mount type=bind,source=$(pwd)/shared,target=/srv im_ubuntu1 ./dbml2sql.sh
