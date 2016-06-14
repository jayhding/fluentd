# fluentd
## This image is based off the fluent/fluentd base image with the following modifications:

* added fluent-plugin-elasticsearch
* added fluent-plugin-parser
* added fluent-plugin-rewrite-tag-filter
* changed fluent.conf to be a forwarder only with some basic additions

## Using this image eg:

`docker run nodeintegration/fluentd-elasticsearch fluentd -c /fluentd/etc/fluent.conf -i '
<source>
@type forward
port 24224
</source>
<match **>
@type stdout
</match>'`

When using the -i flag it appends config to the current config...in this image its empty so all config is supplied on the command line...you could obviously just point it to a different config file that you bind mount if you wish.
fluentd needs the config to be newline separated.

If you dont have the option to specify the new lines like this, docker supports '\n' to inject newlines.
