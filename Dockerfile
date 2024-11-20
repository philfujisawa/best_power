# Usando uma imagem do ruby 
FROM ruby:3.3.6

RUN ruby -v
# Instalando dependências
RUN apt-get update && \
    apt-get install --yes --force-yes gnupg build-essential wget unzip sudo curl

ENV APP_HOME=/app \
    HOME=/root

# Criando a pasta app
WORKDIR $APP_HOME

# Copiando o Gemfile pra pasta app
COPY Gemfile* $APP_HOME/

#instalando o nodejs
RUN apt-get --yes --force-yes install nodejs

#instalando a gems

RUN gem install bundler -v2.4.12
RUN gem install sqlite3 -v 1.6.2

# Intalando as gems
RUN bundle install
RUN gem list
# Copiando o projeto para pasta app
COPY . $APP_HOME

RUN ls
RUN bundle exec rake db:migrate
EXPOSE 3000

CMD ["bundle","exec","rails", "server", "-b", "0.0.0.0","-p","3000"]