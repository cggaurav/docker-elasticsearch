#!/bin/bash




PLUGINS=${PLUGINS:-( cggaurav test )}


for i in "${PLUGINS[@]}"
do
   echo $i
   # RUN /opt/elasticsearch/bin/plugin --install mobz/elasticsearch-head
   # RUN /opt/elasticsearch/bin/plugin --install lukas-vlcek/bigdesk
done


# if [ "$ES_HOST" = "127.0.0.1" ] ; then
#     EMBEDDED="true"
# fi

# if [ "$CFG" != "" ]; then
#     wget $CFG -O /opt/logstash.conf --no-check-certificate
# else
#     cat << EOF > /opt/logstash.conf
# input {
#   syslog {
#     type => syslog
#     port => 514
#   }
# }
# output {
#   stdout { debug => true debug_format => "json"}
# EOF
#     if [ "$EMBEDDED" = "true" ]; then
#         cat << EOF >> /opt/logstash.conf
#   elasticsearch { embedded => $EMBEDDED }
# }
# EOF
#     else
#         cat << EOF >> /opt/logstash.conf
#   elasticsearch { embedded => $EMBEDDED host => "$ES_HOST" port => $ES_PORT }
# }
# EOF
#    fi
# fi
