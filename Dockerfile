FROM debian AS base
WORKDIR /dotnet
RUN apt-get update && apt-get install -y curl bash libicu-dev
RUN curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel STS --install-dir .