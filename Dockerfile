FROM gcc:10

RUN mkdir /woodlang

WORKDIR /woodlang

ADD . .

RUN make clean && make

RUN echo 'export PATH=$PATH:/woodlang/bin' > ~/.bashrc