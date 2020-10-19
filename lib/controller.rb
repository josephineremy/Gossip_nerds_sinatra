require 'sinatra'
require_relative 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    id = params['id'].to_i
    erb :index, locals: {id:id, gossips: Gossip.all}
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/'
  end

  post '/gossips/new/' do
  puts "Salut, je suis dans le serveur"
  puts "Ceci est le contenu du hash params : #{params}"
  puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["gossip_author"]}"
  puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
  puts "Ça déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"
  end

  get '/gossips/:id/' do
    "Voici le numéro du potin que tu veux: #{params['id']}!"
    id = params['id'].to_i
    erb :show, locals: {id:id, gossip: Gossip.find(id)}
  end

  get '/gossips/:id/edit' do
    id = params['id'].to_i
    erb :edit, locals: {id:id, gossip: Gossip.find(id)}
  end

  post '/gossips/:id/edit' do
    id = params['id'].to_i
    Gossip.update(params["gossip_author"], params["gossip_content"], id)
    redirect '/'
  end
end
