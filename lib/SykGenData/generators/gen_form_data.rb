require 'faker'

class GenFormData
  include Faker

  def get_country
    countries = ["Afghanistan","Albania","Algeria","American Samoa","Andorra","Angola","Antigua and Barbuda","Argentina","Armenia","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana","Brazil","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Canada","Cape Verde","Central African Republic","Chad","Chile","China","Colombia","Comoros","Congo","Costa Rica","Côte d'Ivoire","Croatia","Cuba","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","East Timor","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Fiji","Finland","France","Gabon","Gambia","Georgia","Germany","Ghana","Greece","Greenland","Grenada","Guam","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy","Japan","Jordan","Kazakhstan","Kenya","Kiribati","North Korea","South Korea","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Morocco","Mozambique","Myanmar","Namibia","Nauru","Nepal","Netherlands","New Zealand","Nicaragua","Niger","Nigeria","Norway","Northern Mariana Islands","Oman","Pakistan","Palau","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Puerto Rico","Qatar","Romania","Russia","Rwanda","Saint Kitts and Nevis","Saint Lucia", "Saint Vincent and the Grenadines","Samoa","San Marino", "Sao Tome and Principe","Saudi Arabia","Senegal","Serbia and Montenegro","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","Spain","Sri Lanka","Sudan","Sudan, South","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Togo","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States","Uruguay","Uzbekistan","Vanuatu","Vatican City","Venezuela","Vietnam","Virgin Islands, British","Virgin Islands, U.S.","Yemen","Zambia","Zimbabwe"]

    countries.sample
  end

  def get_fake_location
    location = [RickAndMorty.location, Simpsons.location, StarTrek.location, StarWars.planet, Zelda.location, Witcher.location, Lovecraft.location, HarryPotter.location]

    location.sample
  end

  def get_first_name
    Name.first_name
  end

  def get_last_name
    Name.last_name
  end

  def get_dob min_years_old, max_years_old
    Date.birthday(min_years_old, max_years_old).to_s.split('-').map {|x| x.to_i}
  end

  def get_marital_status
    case Random.new.rand(0..2)
    when 0
      'single'
    when 1
      'married'
    when 2
      'divorced'
    end
  end

  def get_hobby
    case Random.new.rand(0..2)
    when 0
      'dance'
    when 1
      'reading'
    when 2
      'cricket'
    end
  end

  def get_phone_number
    phone_number = '07'
    while phone_number.length<11
      phone_number += Random.new.rand(0..9).to_s
    end
    phone_number
  end

  def get_username
    characters = [Ancient.god, Ancient.primordial, Ancient.titan, Ancient.hero, DragonBall.character, Artist.name, BackToTheFuture.character, Book.genre, DrWho.character, DrWho.villian, DrWho.specie, HarryPotter.character, LordOfTheRings.character, Lovecraft.deity, RickAndMorty.character, Seinfeld.character, Simpsons.character, StarTrek.character, StarTrek.villain, StarWars.character, TheFreshPrinceOfBelAir.character, Superhero.descriptor]

    username = characters.sample
    username += Random.new.rand(0..9).to_s
    username += Random.new.rand(0..9).to_s
    username += Random.new.rand(0..9).to_s
    username.gsub(/\s+/, "")
  end

  # Concatenates usernames from get_username until it has a string 64 characters long
  def get_long_username
    def get_long_username_recursion username
      if username.length < 64
        get_long_username_recursion username += '_' + get_username
      else
        username.slice 0...64
      end
    end
    get_long_username_recursion get_username
  end

  def get_about_me
    quotes = [BackToTheFuture.quote, Friends.quote, HarryPotter.quote, GameOfThrones.quote, Lovecraft.fhtagn(3), Lovecraft.paragraphs(Random.new.rand(0..5)), RickAndMorty.quote, Seinfeld.quote, Simpsons.quote, StarWars.quote, StarWars.wookiee_sentence, TheFreshPrinceOfBelAir.quote]
    quotes.sample
  end

  def get_password
    Internet.password(8, 16, true, true)
  end

  def get_long_password
    Internet.password(64, 128, true, true)
  end

  def get_numeric_string
    string = Random.new.rand(0..9).to_s
    final_length = Random.new.rand(8..16)
    while string.length < final_length
      string += Random.new.rand(0..9).to_s
    end
    string
  end

  def get_email
    Internet.free_email
  end
end
