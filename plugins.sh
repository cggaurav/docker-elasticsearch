#!/bin/bash
# PLUGINS=${PLUGINS:-bigdesk,head}
echo "INSTALLING ELASTICSEARCH PLUGINS"
for i in $(echo $PLUGINS | tr "," "\n")
do
	# echo $i
	if [ $i == "bigdesk" ]
	then
		echo "INSTALLING BIGDESK"
		/opt/elasticsearch/bin/plugin --install lukas-vlcek/bigdesk
	fi

	if [ $i == "head" ]
	then
		echo "INSTALLING HEAD"
		/opt/elasticsearch/bin/plugin --install mobz/elasticsearch-head
	fi


	if [ $i == "hammer" ]
	then
		echo "INSTALLING HAMMER"
		/opt/elasticsearch/bin/plugin --install andrewvc/elastic-hammer
	fi


	if [ $i == "paramedic" ]
	then
		echo "INSTALLING HAMMER"
		/opt/elasticsearch/bin/plugin --install karmi/elasticsearch-paramedic
	fi

done

/opt/elasticsearch/bin/elasticsearch -f
