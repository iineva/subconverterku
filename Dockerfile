FROM alpine:edge

RUN wget https://github.com/tindy2013/subconverter/releases/latest/download/subconverter_linux64.tar.gz && \
	tar -zxvf subconverter_linux64.tar.gz && \
	chmod +x /subconverter/subconverter && \
    rm -rf /subconverter_linux64.tar.gz

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh