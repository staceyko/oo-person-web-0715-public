class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

    def initialize(name, bank_account=25)
        @name = name
        @bank_account = bank_account
        @happiness = 8
        @hygiene = 8

    end

    def bank_account
      @bank_account 
    end

    def happiness
      if @happiness > 10
        @happiness = 10
      elsif @happiness < 0
        @happiness = 0
      end
      @happiness
    end

    def hygiene
      if @hygiene > 10
        @hygiene = 10
      elsif @hygiene < 0
        @hygiene = 0
      end
      @hygiene
    end

    def happy?
        @happiness > 7 ? true : false
      
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
       @bank_account += salary
      return "all about the benjamins"
    end

    def take_bath
       self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
      return "♪ another one bites the dust ♫"
    end
require 'pry'
    def call_friend(friend)
      friend.happiness += 3
        self.happiness += 3
      # binding.pry
      return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

require 'pry'

    def start_conversation(person, topic)
      case topic 
        when "politics"
            person.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        when "weather"
            person.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            person.happiness
            self.happiness
            return "blah blah blah blah blah"
        end
    end
  end


 
      #   if topic == "politics"
      #     # binding.pry
      #      person.happiness -= 2 
      #      self.happiness -= 2
         
      #   return "blah blah partisan blah lobbyist"
      #   elsif topic == "weather"
      #     person.happiness += 1
      #     self.happiness += 1
      #   return "blah blah sun blah rain"

      #     end
      #   if person.happiness <= 0 || self.happiness <= 0
      #     person.happiness = 0 && self.happiness = 0
      #   end
      #   if person.happiness > 10 || self.happiness > 10
      #     person.happiness = 10 && self.happiness = 10
      #   end

      #   if topic != "politics" || topic != "weather"
      #     person.happiness
      #     self.happiness
      #     return "blah blah blah blah blah"
      #   end
      # end
