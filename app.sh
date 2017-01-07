### NEXTCLOUD ###
_build_nextcloud() {
local VERSION="11.0.0"
local FOLDER="nextcloud"
local FILE="${FOLDER}-${VERSION}.tar.bz2"
local URL="https://download.nextcloud.com/server/releases/${FILE}"

_download_bz2 "${FILE}" "${URL}" "${FOLDER}"

pushd "target/${FOLDER}/"
popd

mkdir -p "${DEST}/app"
cp -vfaR "target/${FOLDER}/"* "${DEST}/app/"
cp -vfa "target/${FOLDER}/.htaccess" "${DEST}/app/"
cp -vfa "target/${FOLDER}/.user.ini" "${DEST}/app/"
}

_build() {
  _build_nextcloud
  _package
}
