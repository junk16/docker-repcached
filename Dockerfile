FROM centos:centos7

RUN yum install -y make libtool libevent-devel git && \
	git clone https://github.com/kspe/repcached.git && \
	cd repcached && \
	./configure --enable-64bit --enable-replication && \
	make && \
	make install && \	
	groupadd --gid  11211 memcache && \ 
	useradd --gid memcache --uid 11211 memcache

USER memcache	
EXPOSE 11211
CMD ["memcached"]
