ARG CONTAINER_REGISTRY="docker.io"

FROM $CONTAINER_REGISTRY/lacledeslan/gamesvr-warsow

ARG BUILD_NODE=unspecified
ARG GIT_REVISION=unspecified

LABEL architecture="amd64" \
    com.lacledeslan.build-node=$BUILD_NODE \
    maintainer="Laclede's LAN <contact@lacledeslan.com>" \
    org.opencontainers.image.description="Laclede's LAN Warsow Freeplay Dedicated Server" \
    org.opencontainers.image.revision=$GIT_REVISION \
    org.opencontainers.image.source="https://github.com/LacledesLAN/gamesvr-warsow-freeplay" \
    org.opencontainers.image.vendor="Laclede's LAN"

# UPDATE USERNAME & ensure permissions
RUN usermod -l WarsowFreeplay Warsow;

COPY --chown=WarsowFreeplay:root /dist /app

# `RUN true` lines are work around for https://github.com/moby/moby/issues/36573
RUN true

COPY --chown=WarsowFreeplay:root ./ll-tests /app/ll-tests

RUN chmod +x /app/ll-tests/*.sh;

USER WarsowFreeplay

WORKDIR /app/

CMD ["/bin/bash"]

ONBUILD USER root
