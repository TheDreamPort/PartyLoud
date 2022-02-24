FROM ubuntu:20.04


RUN apt-get update && \
        apt-get install -y \
		  "curl"     \
		  "grep"     \
		  "sed"      \
		  "bc"       \
          "unzip"
     
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \ 
    ./aws/install

ADD . .
CMD ["/bin/bash", "./partyloud.sh", "-h"]