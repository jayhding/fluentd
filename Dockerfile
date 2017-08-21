FROM fluent/fluentd:v0.12
MAINTAINER Brendan Beveridge <brendan@nodeintegration.com.au>
EXPOSE 24224
RUN gem install fluent-plugin-elasticsearch && \
    gem install fluent-plugin-aws-elasticsearch-service && \
    gem install fluent-plugin-parser && \
    gem install fluent-plugin-rewrite-tag-filter
CMD fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT
