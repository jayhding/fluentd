FROM fluent/fluentd:v0.12
MAINTAINER Brendan Beveridge <brendan@nodeintegration.com.au>
EXPOSE 24224
RUN gem install fluent-plugin-elasticsearch && \
    gem install fluent-plugin-aws-elasticsearch-service && \
    gem install fluent-plugin-parser && \
    gem install fluent-plugin-rewrite-tag-filter
RUN touch /fluentd/etc/fluentd.conf
CMD fluentd -c /fluentd/etc/fluentd.conf -p /fluentd/plugins $FLUENTD_OPT
