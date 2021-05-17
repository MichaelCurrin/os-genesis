# There is not much benefit to running this in a container.
# For install commands at least, I've tested locally initially
# and it is unlikely to change.
# And I can easily uninstall and install again on a machine.
# Also the set up from an empty image is terribly slow.
FROM ubuntu

WORKDIR /root/genesis
COPY genesis genesis

RUN genesis/install.sh
