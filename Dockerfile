FROM openshift/ruby-20-centos
<<<<<<< HEAD

RUN gem install sinatra sinatra-activerecord mysql2 --no-ri --no-rdoc

ADD . /tmp/
USER root
RUN chown -R ruby:ruby /tmp/*

USER ruby
WORKDIR /tmp/

ENV RACK_ENV production
ENV RAILS_ENV production

EXPOSE 8080
CMD ["ruby", "app.rb"]
=======
RUN gem install sinatra
ADD app.rb /tmp/app.rb
EXPOSE 8080
CMD ruby /tmp/app.rb
>>>>>>> origin/patch-1
