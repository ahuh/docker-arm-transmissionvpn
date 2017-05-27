echo "#! /bin/sh"
echo "export TRANSMISSION_HOME=${TRANSMISSION_HOME}"
echo "export TRANSMISSION_ALT_SPEED_DOWN=${TRANSMISSION_ALT_SPEED_DOWN}"
echo "export TRANSMISSION_ALT_SPEED_ENABLED=${TRANSMISSION_ALT_SPEED_ENABLED}"
echo "export TRANSMISSION_ALT_SPEED_TIME_BEGIN=${TRANSMISSION_ALT_SPEED_TIME_BEGIN}"
echo "export TRANSMISSION_ALT_SPEED_TIME_DAY=${TRANSMISSION_ALT_SPEED_TIME_DAY}"
echo "export TRANSMISSION_ALT_SPEED_TIME_ENABLED=${TRANSMISSION_ALT_SPEED_TIME_ENABLED}"
echo "export TRANSMISSION_ALT_SPEED_TIME_END=${TRANSMISSION_ALT_SPEED_TIME_END}"
echo "export TRANSMISSION_ALT_SPEED_UP=${TRANSMISSION_ALT_SPEED_UP}"
echo "export TRANSMISSION_BIND_ADDRESS_IPV4=${TRANSMISSION_BIND_ADDRESS_IPV4}"
echo "export TRANSMISSION_BIND_ADDRESS_IPV6=${TRANSMISSION_BIND_ADDRESS_IPV6}"
echo "export TRANSMISSION_BLOCKLIST_ENABLED=${TRANSMISSION_BLOCKLIST_ENABLED}"
echo "export TRANSMISSION_BLOCKLIST_URL=${TRANSMISSION_BLOCKLIST_URL}"
echo "export TRANSMISSION_CACHE_SIZE_MB=${TRANSMISSION_CACHE_SIZE_MB}"
echo "export TRANSMISSION_DHT_ENABLED=${TRANSMISSION_DHT_ENABLED}"
echo "export TRANSMISSION_DOWNLOAD_DIR=${TRANSMISSION_DOWNLOAD_DIR}"
echo "export TRANSMISSION_DOWNLOAD_LIMIT=${TRANSMISSION_DOWNLOAD_LIMIT}"
echo "export TRANSMISSION_DOWNLOAD_LIMIT_ENABLED=${TRANSMISSION_DOWNLOAD_LIMIT_ENABLED}"
echo "export TRANSMISSION_DOWNLOAD_QUEUE_ENABLED=${TRANSMISSION_DOWNLOAD_QUEUE_ENABLED}"
echo "export TRANSMISSION_DOWNLOAD_QUEUE_SIZE=${TRANSMISSION_DOWNLOAD_QUEUE_SIZE}"
echo "export TRANSMISSION_ENCRYPTION=${TRANSMISSION_ENCRYPTION}"
echo "export TRANSMISSION_IDLE_SEEDING_LIMIT=${TRANSMISSION_IDLE_SEEDING_LIMIT}"
echo "export TRANSMISSION_IDLE_SEEDING_LIMIT_ENABLED=${TRANSMISSION_IDLE_SEEDING_LIMIT_ENABLED}"
echo "export TRANSMISSION_INCOMPLETE_DIR=${TRANSMISSION_INCOMPLETE_DIR}"
echo "export TRANSMISSION_INCOMPLETE_DIR_ENABLED=${TRANSMISSION_INCOMPLETE_DIR_ENABLED}"
echo "export TRANSMISSION_LPD_ENABLED=${TRANSMISSION_LPD_ENABLED}"
echo "export TRANSMISSION_MAX_PEERS_GLOBAL=${TRANSMISSION_MAX_PEERS_GLOBAL}"
echo "export TRANSMISSION_MESSAGE_LEVEL=${TRANSMISSION_MESSAGE_LEVEL}"
echo "export TRANSMISSION_PEER_CONGESTION_ALGORITHM=${TRANSMISSION_PEER_CONGESTION_ALGORITHM}"
echo "export TRANSMISSION_PEER_ID_TTL_HOURS=${TRANSMISSION_PEER_ID_TTL_HOURS}"
echo "export TRANSMISSION_PEER_LIMIT_GLOBAL=${TRANSMISSION_PEER_LIMIT_GLOBAL}"
echo "export TRANSMISSION_PEER_LIMIT_PER_TORRENT=${TRANSMISSION_PEER_LIMIT_PER_TORRENT}"
echo "export TRANSMISSION_PEER_PORT=${TRANSMISSION_PEER_PORT}"
echo "export TRANSMISSION_PEER_PORT_RANDOM_HIGH=${TRANSMISSION_PEER_PORT_RANDOM_HIGH}"
echo "export TRANSMISSION_PEER_PORT_RANDOM_LOW=${TRANSMISSION_PEER_PORT_RANDOM_LOW}"
echo "export TRANSMISSION_PEER_PORT_RANDOM_ON_START=${TRANSMISSION_PEER_PORT_RANDOM_ON_START}"
echo "export TRANSMISSION_PEER_SOCKET_TOS=${TRANSMISSION_PEER_SOCKET_TOS}"
echo "export TRANSMISSION_PEX_ENABLED=${TRANSMISSION_PEX_ENABLED}"
echo "export TRANSMISSION_PORT_FORWARDING_ENABLED=${TRANSMISSION_PORT_FORWARDING_ENABLED}"
echo "export TRANSMISSION_PREALLOCATION=${TRANSMISSION_PREALLOCATION}"
echo "export TRANSMISSION_PREFETCH_ENABLED=${TRANSMISSION_PREFETCH_ENABLED}"
echo "export TRANSMISSION_QUEUE_STALLED_ENABLED=${TRANSMISSION_QUEUE_STALLED_ENABLED}"
echo "export TRANSMISSION_QUEUE_STALLED_MINUTES=${TRANSMISSION_QUEUE_STALLED_MINUTES}"
echo "export TRANSMISSION_RATIO_LIMIT=${TRANSMISSION_RATIO_LIMIT}"
echo "export TRANSMISSION_RATIO_LIMIT_ENABLED=${TRANSMISSION_RATIO_LIMIT_ENABLED}"
echo "export TRANSMISSION_RENAME_PARTIAL_FILES=${TRANSMISSION_RENAME_PARTIAL_FILES}"
echo "export TRANSMISSION_RPC_AUTHENTICATION_REQUIRED=${TRANSMISSION_RPC_AUTHENTICATION_REQUIRED}"
echo "export TRANSMISSION_RPC_BIND_ADDRESS=${TRANSMISSION_RPC_BIND_ADDRESS}"
echo "export TRANSMISSION_RPC_ENABLED=${TRANSMISSION_RPC_ENABLED}"
echo "export TRANSMISSION_RPC_PASSWORD=${TRANSMISSION_RPC_PASSWORD}"
echo "export TRANSMISSION_RPC_PORT=${TRANSMISSION_RPC_PORT}"
echo "export TRANSMISSION_RPC_URL=${TRANSMISSION_RPC_URL}"
echo "export TRANSMISSION_RPC_USERNAME=${TRANSMISSION_RPC_USERNAME}"
echo "export TRANSMISSION_RPC_WHITELIST=${TRANSMISSION_RPC_WHITELIST}"
echo "export TRANSMISSION_RPC_WHITELIST_ENABLED=${TRANSMISSION_RPC_WHITELIST_ENABLED}"
echo "export TRANSMISSION_SCRAPE_PAUSED_TORRENTS_ENABLED=${TRANSMISSION_SCRAPE_PAUSED_TORRENTS_ENABLED}"
echo "export TRANSMISSION_SCRIPT_TORRENT_DONE_ENABLED=${TRANSMISSION_SCRIPT_TORRENT_DONE_ENABLED}"
echo "export TRANSMISSION_SCRIPT_TORRENT_DONE_FILENAME=${TRANSMISSION_SCRIPT_TORRENT_DONE_FILENAME}"
echo "export TRANSMISSION_SEED_QUEUE_ENABLED=${TRANSMISSION_SEED_QUEUE_ENABLED}"
echo "export TRANSMISSION_SEED_QUEUE_SIZE=${TRANSMISSION_SEED_QUEUE_SIZE}"
echo "export TRANSMISSION_SPEED_LIMIT_DOWN=${TRANSMISSION_SPEED_LIMIT_DOWN}"
echo "export TRANSMISSION_SPEED_LIMIT_DOWN_ENABLED=${TRANSMISSION_SPEED_LIMIT_DOWN_ENABLED}"
echo "export TRANSMISSION_SPEED_LIMIT_UP=${TRANSMISSION_SPEED_LIMIT_UP}"
echo "export TRANSMISSION_SPEED_LIMIT_UP_ENABLED=${TRANSMISSION_SPEED_LIMIT_UP_ENABLED}"
echo "export TRANSMISSION_START_ADDED_TORRENTS=${TRANSMISSION_START_ADDED_TORRENTS}"
echo "export TRANSMISSION_TRASH_ORIGINAL_TORRENT_FILES=${TRANSMISSION_TRASH_ORIGINAL_TORRENT_FILES}"
echo "export TRANSMISSION_UMASK=${TRANSMISSION_UMASK}"
echo "export TRANSMISSION_UPLOAD_LIMIT=${TRANSMISSION_UPLOAD_LIMIT}"
echo "export TRANSMISSION_UPLOAD_LIMIT_ENABLED=${TRANSMISSION_UPLOAD_LIMIT_ENABLED}"
echo "export TRANSMISSION_UPLOAD_SLOTS_PER_TORRENT=${TRANSMISSION_UPLOAD_SLOTS_PER_TORRENT}"
echo "export TRANSMISSION_UTP_ENABLED=${TRANSMISSION_UTP_ENABLED}"
echo "export TRANSMISSION_WATCH_DIR=${TRANSMISSION_WATCH_DIR}"
echo "export TRANSMISSION_WATCH_DIR_ENABLED=${TRANSMISSION_WATCH_DIR_ENABLED}"
echo ""
echo "# Transmission needs to know which VPN provider is used"
echo "export OPENVPN_PROVIDER=${OPENVPN_PROVIDER}"
echo ""
echo "export PUID=${PUID}"
echo "export PGID=${PGID}"
