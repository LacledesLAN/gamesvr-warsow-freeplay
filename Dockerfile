
FROM lacledeslan/warsow

COPY /dist /app/warsow-2.1.2/

WORKDIR /app/warsow-2.1.2/
CMD ["/bin/bash"]
ONBUILD USER root
