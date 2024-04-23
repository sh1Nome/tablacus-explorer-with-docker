mkdir .\te

# 本体のダウンロードと解凍
wget "https://github.com/tablacus/TablacusExplorer/releases/download/23.9.13/te230913.zip" -OutFile ".\te.zip"
Expand-Archive -Path .\te.zip -DestinationPath .\te
rm .\te.zip

# 拡張機能Everythingのダウンロードと解凍
wget "https://tablacus.github.io/TablacusExplorerAddons/everything/everything_146.zip" -OutFile ".\everything.zip"
Expand-Archive -Path .\everything.zip -DestinationPath .\te\addons
rm .\everything.zip

# 拡張機能お気に入りバー（水平）のダウンロードと解凍
wget "https://tablacus.github.io/TablacusExplorerAddons/favbar/favbar_127.zip" -OutFile ".\favbar.zip"
Expand-Archive -Path .\favbar.zip -DestinationPath .\te\addons
rm .\favbar.zip

# 拡張機能更新のダウンロードと解凍
wget "https://tablacus.github.io/TablacusExplorerAddons/refresh/refresh_110.zip" -OutFile ".\refresh.zip"
Expand-Archive -Path .\refresh.zip -DestinationPath .\te\addons
rm .\refresh.zip

mkdir .\te\config

rm .\te\config
Copy-Item .\config .\te\config -Recurse