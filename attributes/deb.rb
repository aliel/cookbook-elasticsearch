default.elasticsearch[:version] = "1.0.1"
default.elasticsearch[:host] = "http://download.elasticsearch.org"
default.elasticsearch[:repository] = "elasticsearch/elasticsearch"
default.elasticsearch[:filename] = "elasticsearch-#{node.elasticsearch[:version]}.deb"

default.elasticsearch[:deb_url] = [node.elasticsearch[:host], node.elasticsearch[:repository], node.elasticsearch[:filename]].join('/')
