class Series < ApplicationRecord
    has_many :favorite_items, dependent: :destroy
    has_many :favorited_by, through: :favorite_items, source: :user

    scope :search, -> (title){where("title Like ?", "%#{title}%")}
    scope :filter_by_params, ->(params){
    search(params[:search])
  }


    def self.seri
   
        url = URI("https://imdb-top-100-movies.p.rapidapi.com/series/")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true

        request = Net::HTTP::Get.new(url)
        request["X-RapidAPI-Key"] = 'cc2eb3e0c1msh74553d800b55ccfp1a8550jsna2c0f4f06fc5'
        request["X-RapidAPI-Host"] = 'imdb-top-100-movies.p.rapidapi.com'

        response = http.request(request)
        json = JSON.parse(response.body)
        
        json.each do |s|
            dizi = Series.create()
            dizi.title = s['title']
            dizi.year = s["year"]
            dizi.description = s["description"]
            dizi.image = s["image"]
            dizi.rating = s["rating"]
            dizi.genre = s["genre"]
            dizi.save
        end       
    end
end
