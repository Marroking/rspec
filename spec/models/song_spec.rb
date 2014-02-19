require "spec_helper"

describe Song do
	# it "should concatenate title with name" do
	#   song = Song.new(author: "Jose Jose", title: "Prueba")
	#   #FactoryGirl
	#   song.save
	#   song.author.should eq("Jose Jose Prueba")
	# end
	it "Concatenar el titulo con pista larga" do
	  #1 Crear la cancion con 3 o menor a 3 minutos
	  #2. comprobar que el title de la pista no contenga "pista larga"
	  #3. crear otra cancion con mas de 3 minutos en duration
	  #4. comprobar que el title de la pista CONTENGA "pista larga"
	  song = Song.create(duration: "3:00", title: "titulo")
	  song.title.include?("pista larga").should be_false
	  #rspec matchers

	  song2 = Song.create(duration: "3:30", title: "titulo")
	  song2.title.include?("pista larga").should be_true

	  #FactoryGirl
	  
	  song.save

	end

end