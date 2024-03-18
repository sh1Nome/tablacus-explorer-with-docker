FROM alpine:latest

RUN mkdir /work

# 本体のダウンロードと解凍
RUN wget https://github.com/tablacus/TablacusExplorer/releases/download/23.9.13/te230913.zip -O /work/te.zip \
    && mkdir /work/te \
    && unzip -d /work/te /work/te.zip \
    && rm -f /work/te.zip

# 拡張機能Everythingのダウンロードと解凍
RUN wget https://tablacus.github.io/TablacusExplorerAddons/everything/everything_146.zip -O /work/te/addons/everything.zip \
    && unzip -d /work/te/addons /work/te/addons/everything.zip \
    && rm -f /work/te/addons/everything.zip

# 拡張機能お気に入りバー（水平）のダウンロードと解凍
RUN wget https://tablacus.github.io/TablacusExplorerAddons/favbar/favbar_127.zip -O /work/te/addons/favbar.zip \
    && unzip -d /work/te/addons /work/te/addons/favbar.zip \
    && rm -f /work/te/addons/favbar.zip

# 拡張機能更新のダウンロードと解凍
RUN wget https://tablacus.github.io/TablacusExplorerAddons/refresh/refresh_110.zip -O /work/te/addons/refresh.zip \
    && unzip -d /work/te/addons /work/te/addons/refresh.zip \
    && rm -f /work/te/addons/refresh.zip

RUN mkdir /work/te/config

# 拡張機能の設定
COPY ./config/ /work/te/config/

COPY ./entrypoint.sh /

RUN mkdir /build \
    && mkdir /build/te

ENTRYPOINT [ "/entrypoint.sh" ]
