#FROM fluent/fluentd:v0.14.6
FROM fluent/fluentd:latest
MAINTAINER Brendan Beveridge <brendan@nodeintegration.com.au>
USER fluent
WORKDIR /home/fluent
ENV PATH /home/fluent/.gem/ruby/2.3.0/bin:$PATH
EXPOSE 24224
RUN gem install fluent-plugin-parser && \
    gem install fluent-plugin-rewrite-tag-filter
CMD fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT
