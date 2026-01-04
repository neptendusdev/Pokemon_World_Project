module CustomEggGroups
  # Dictionnaire pour stocker nos groupes : { ID => "Nom" }
  @groups = {
    16 => "Arthropode",
    17 => "Artificiel",
    18 => "Aviaire",
    19 => "Batracien",
    20 => "Bébé",
    21 => "Canin",
    22 => "Crustacés",
    23 => "Echo",
    24 => "Equin",
    25 => "Félin",
    26 => "Fongique",
    27 => "Marin",
    28 => "Mollusque",
    29 => "Mythologique",
    30 => "Nourriture",
    31 => "Poisson",
    32 => "Reptile",
    33 => "Rongeur",
    34 => "Simiesque",
    35 => "Troglodyte",
    36 => "Unique",
    37 => "Vers",
    38 => "Vestige",
    39 => "Volant",
  }

  def self.groups
    return @groups
  end

  def self.custom_group(id, name)
    @groups[id] = name
  end
end
