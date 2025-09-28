################################################################################
# Home Assistant Supervisor Add-on Dockerfile
#
# This entire file replaces your old Dockerfile. It:
#  1. Boots from the official Resilio Sync image
#  2. Copies in your add-on “rootfs” hooks (run.sh, healthcheck, etc.)
#  3. Marks the startup script as executable
#  4. Uses that script as the container’s entrypoint
################################################################################

# 1) Base image: official multi-arch Resilio Sync
FROM resilio/sync:latest

# 2) Add Supervisor hooks (run.sh, healthcheck, etc.)
COPY rootfs/ /

# 3) Ensure the run script is executable
RUN chmod a+x /run.sh

# 4) Default command: invoke your run.sh to launch sync in HAOS mode
CMD [ "/run.sh" ]
