require 'sinatra'
require 'httparty'
require 'nokogiri'
require 'byebug'
require 'json'

def perform_scraping(url, classe) 
  headers = { "User-Agent" => "Mozilla/5.0" }
  response = HTTParty.get(url, headers: headers)
  return "Erro ao acessar o site" unless response.success?

  doc = Nokogiri::HTML(response.body)
  # Busca o elemento baseado na classe que o usuário colou
  doc.css(classe).map(&:text).join("\n")
end

get '/' do
  erb :index
end

post '/scrape' do
  @url = params[:url]
  @classe = params[:classe]
  
  # Chama o scraping passando os dados do form
  @resultado = perform_scraping(@url, @classe)
  
  erb :index
end