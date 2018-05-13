require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "database.db"
)

ActiveRecord::Base.logger = Logger.new(STDERR)



class Man < ActiveRecord::Base
  has_many :supporters
end

class Supporter <ActiveRecord::Base
  belongs_to :man
end

# require 'pry'; binding.pry

# def db_query(sql)
#   db = SQLite3::Database.new("database.db")
#   db.results_as_hash = true
#   # puts "="*100
#   # puts sql
#   # puts "="*100
#   result = db.execute(sql)
#   db.close
#   result
# end

# require 'pry'; binding.pry

get "/men" do
  # @men = db_query("SELECT * FROM men;")
  # require 'pry'; binding.pry
  @men = Man.all
  puts "="*100
  p @men
  puts "="*100
  erb :men_main
end

get "/men/new" do
  erb :men_new
end

post "/men" do
  # sql = "INSERT INTO men (name, country, height_in_cm, age_at_death, note, image_url)
  #        VALUES(
  #          '#{ params["name"] }',
  #          '#{ params["country"] }',
  #           #{ params["height_in_cm"] },
  #           #{ params["age_at_death"] },
  #          '#{ params["note"] }',
  #          '#{ params["image_url"]}'
  #       );"
  # db_query(sql)

  man = Man.new
  man.name = params[:name]
  man.country = params[:country]
  man.height_in_cm = params[:height_in_cm]
  man.age_at_death = params[:age_at_death]
  man.note = man[:note]
  man.image_url = params[:image_url]
  man.save

  redirect "/men"
end


get "/men/:id" do
  # id = params[:id]
  # @men = db_query("SELECT * FROM men WHERE id = #{params["id"]};")
  # @men = @men.first
  @men = Man.all
  @man = Man.find params[:id]
  erb :men_details
end

get "/men/:id/edit" do
  # @men = db_query("SELECT * FROM men WHERE id = #{params[:id]}")
  # @men = @men.first
  @man = Man.find params[:id]
  erb :men_edit
end

post "/men/:id" do
  # sql = "UPDATE men SET
  #  name = '#{ params["name"] }',
  #  country = '#{ params["country"] }',
  #  height_in_cm = #{ params["height_in_cm"] },
  #  age_at_death = #{ params["age_at_death"] },
  #  note = '#{ params["note"] }',
  #  image_url = '#{ params["image_url"]}'
  # WHERE id = #{params[:id]}"
  #
  # db_query(sql)

  man = Man.find params[:id]
  man.name = params[:name]
  man.country = params[:country]
  man.height_in_cm = params[:height_in_cm]
  man.age_at_death = params[:age_at_death]
  man.note = man[:note]
  man.image_url = params[:image_url]
  man.save

  redirect "/men/#{params["id"]}"
end

get "/men/:id/delete" do
  # db_query("DELETE FROM men WHERE id = #{params[:id]}")
  man = Man.find params[:id]
  man.destroy
  redirect "/men"
end


# post "/search" do
#   @men = db_query("SELECT * FROM men WHERE name = #{params[:name]} ;")
#   @result = @men.select(|key| key[:name].match())
#   @result = @result.first
#   redirect "/men/<%= @result["id"] %>"
# end

get "/supporters/new" do
  erb :supporters_new
end

post "/supporters/new" do
  supporter = Supporter.new
  supporter.name = params[:name]
  supporter.location = params[:location]
  supporter.spotted = params[:spotted]
  supporter.man_id = params[:man_id]

  supporter.save

  redirect"/supporters"
end

get "/supporters" do
  @supporters = Supporter.all
  erb :supporters_main
end

get "/supporters/:id" do
  @supporters = Supporter.all
  @supporter = Supporter.find params[:id]
  erb :supporters_details
end
