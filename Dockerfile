FROM golang:1.12.0-alpine3.9
# create an app directory in the container
RUN mkdir /app
# pull the current files on our computer in the current directory we are in 
# ( where this Dockerfile is located ) and put all those files in the /app directory 
#  in the container which we created with the previous command
ADD . /app
# the directory which will be running on the container when you start it, and we want that to be /app
WORKDIR /app
# build the packages and dependencies that will be used in your project
RUN go build -o main .
# execute the executable file from previous step
CMD ["/app/main"]