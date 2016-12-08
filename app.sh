### OWNCLOUD ###
_build_owncloud() {
local VERSION="10.0.1"
local FOLDER="nextcloud"
local FILE="${FOLDER}-${VERSION}.tar.bz2"
local URL="https://download.nextcloud.com/server/releases/${FILE}"

_download_bz2 "${FILE}" "${URL}" "${FOLDER}"

pushd "target/${FOLDER}/"
popd

mkdir -p "${DEST}/app"
cp -vfaR "target/${FOLDER}/"* "${DEST}/app/"
cp -vfa "target/${FOLDER}/.htaccess" "${DEST}/app/"
}

_build() {
  _build_owncloud
  _package
}
