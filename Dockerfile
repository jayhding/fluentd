FROM fluent/fluentd:latest
MAINTAINER Brendan Beveridge <brendan@nodeintegration.com.au>
USER fluent
WORKDIR /home/fluent
ENV PATH /home/fluent/.gem/ruby/2.2.0/bin:$PATH
EXPOSE 24224
RUN gem install fluent-plugin-elasticsearch
CMD fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT
