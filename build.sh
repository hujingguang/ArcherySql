docker build -f ./Dockerfile.base -t base .
cp Dockerfile.local ../ && cd .. && docker build -f ./Dockerfile.local -t sql_archery .
