
FROM lacledeslan/gamesvr-warsow


ENV LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8

COPY --chown=Warsow:root /dist /app

COPY --chown=Warsow:root ./ll-tests /app/ll-tests

RUN chmod +x /app/ll-tests/*.sh;


WORKDIR /app
CMD ["/bin/bash"]
ONBUILD USER root
