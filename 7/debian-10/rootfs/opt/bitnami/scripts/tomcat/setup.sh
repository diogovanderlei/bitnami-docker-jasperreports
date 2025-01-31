#!/bin/bash

# shellcheck disable=SC1091

set -o errexit
set -o nounset
set -o pipefail
# set -o xtrace # Uncomment this line for debugging purposes

# Load libraries
. /opt/bitnami/scripts/libtomcat.sh
. /opt/bitnami/scripts/libfs.sh
. /opt/bitnami/scripts/libos.sh

# Load Tomcat environment variables
. /opt/bitnami/scripts/tomcat-env.sh

# Ensure tomcat environment variables are valid
tomcat_validate

# Ensure tomcat is initialized
tomcat_initialize
