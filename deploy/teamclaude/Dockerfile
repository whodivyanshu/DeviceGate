# TeamClaude for a Railway deployment of DeviceGate. Runs as a private service (no public domain);
# DeviceGate reaches it over Railway's private network with TeamClaude's proxy.apiKey. Config and
# the Claude login live on a volume mounted at /data.

FROM node:22-bookworm-slim
RUN npm install -g @karpeleslab/teamclaude@1.1.22
ENV XDG_CONFIG_HOME=/data \
    TEAMCLAUDE_HOST=::
COPY start.sh /usr/local/bin/start-teamclaude
EXPOSE 3456
CMD ["start-teamclaude"]
