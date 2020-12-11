# escape=`
ARG CONTAINER_REGISTRY="docker.io"

FROM $CONTAINER_REGISTRY/lacledeslan/gamesvr-warsow

ARG BUILDNODE="unspecified"
ARG SOURCE_COMMIT

LABEL com.lacledeslan.build-node = $BUILDNODE `
        org.opencontainers.image.source https://github.com/LacledesLAN/gamesvr-warsow-freeplay `
        org.opencontainers.image.title "Laclede's LAN Warsow Freeplay Dedicated Server" `
        org.opencontainers.image.url https://github.com/LacledesLAN/README.1ST `
        org.opencontainers.image.vendor "Laclede's LAN" `
        org.opencontainers.image.version = $SOURCE_COMMIT


LABEL org.opencontainers.image.source https://github.com/OWNER/REPO

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
