class Player
    attr_accessor :life
    attr_reader :name
    attr_reader :nickname
    def initialize(name, nickname)
        @name = name
        @life = 3
        @nickname = nickname
    end
end