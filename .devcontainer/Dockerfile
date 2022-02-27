ARG VARIANT="2.7"
FROM mcr.microsoft.com/vscode/devcontainers/ruby:0-${VARIANT}

# [Option] Install Node.js
#ARG INSTALL_NODE="true"
#ARG NODE_VERSION="lts/*"
#RUN if [ "${INSTALL_NODE}" = "true" ]; then su vscode -c "source /usr/local/share/nvm/nvm.sh && nvm install ${NODE_VERSION} 2>&1"; fi

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# [Optional] Uncomment this line to install additional gems.
RUN gem install jekyll