module AZEROTHFaker
  class Race
    def self.name
      [
        'Orc',
        'Troll',
        'Undead',
        'Tauren',
        'Blood elf',
        'Goblin',
        'Pandaren',
        'Human',
        'Night elf',
        'Dwarf',
        'Gnome',
        'Draenei',
        'Worgen'
      ].sample
    end
  end

end