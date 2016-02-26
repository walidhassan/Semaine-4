require 'open-uri'
require 'json'

loop do
    puts 'Entrez un numéro de code barre: '
    bar_code = gets.chomp
    
    url= "http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"
    
    json = open'url'.read
    
    data= JSON.parse(json)
    
    puts data['product_name']['origins']

end