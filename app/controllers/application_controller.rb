class ApplicationController < Sinatra::Base

  configure do
  	   set :views, "app/views"
  	   set :public_dir, "public"
  end

  get "/" do
  	   erb :index
  end
end

class Dog

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

  def self.count
    Dog.all.count
  end

end
