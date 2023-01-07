FROM alpine

RUN apk update && apk add --no-cache libxml2-dev linux-headers git build-base gcc abuild binutils binutils-doc gcc-doc cmake cmake-doc extra-cmake-modules extra-cmake-modules-doc
WORKDIR /opt/vcontrold
COPY vcontrold ./
RUN rm -rf build && cmake . -DMANPAGES=OFF -DCMAKE_BUILD_TYPE=Release -Bbuild && cmake --build build

FROM alpine:latest
WORKDIR /root/

EXPOSE 3002

COPY --from=0 /opt/vcontrold/build/vcontrold ./
COPY --from=0 /opt/vcontrold/build/vclient ./
# COPY --from=0 /opt/vcontrold/build/vcntld ./
COPY --from=0 /opt/vcontrold/xml/kw/* /etc/vcontrold/xml/kw/
COPY --from=0 /opt/vcontrold/xml/300/* /etc/vcontrold/xml/300/
COPY --from=0 /opt/vcontrold/xml/300/* /etc/vcontrold/
COPY --from=0 /usr/lib/libxml2.so* /usr/lib/
COPY --from=0 /usr/lib/liblzma.so* /usr/lib/

CMD ["./vcontrold", "--nodaemon", "-v", "--xmlfile", "/etc/vcontrold/xml/300/vcontrold.xml"]
# CMD ["./vcontrold", "--nodaemon", "-v", "-n", "--xmlfile", "/etc/vcontrold/xml/kw/vcontrold.xml"]
