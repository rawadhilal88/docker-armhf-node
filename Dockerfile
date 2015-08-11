FROM armv7/armhf-ubuntu_core:14.10

COPY node_1.12.2_armhf.tar.gz /node_1.12.2_armhf.tar.gz

RUN cd / && tar -xvf /node_1.12.2_armhf.tar.gz

RUN ln -s /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm

RUN rm /node_1.12.2_armhf.tar.gz

CMD ["/bin/bash"]

