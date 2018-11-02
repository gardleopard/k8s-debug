FROM ruby:2
RUN gem install sinatra
RUN gem install json
RUN mkdir /app
WORKDIR /app
EXPOSE 4567
COPY app.rb /app
CMD ruby app.rb

