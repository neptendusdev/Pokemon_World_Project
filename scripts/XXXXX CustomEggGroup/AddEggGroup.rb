module CustomEggGroups
  # Dictionnaire pour stocker nos groupes : { ID => "Nom" }
  @groups = {
    16 => "Ame",
    17 => "Arthropode",
    18 => "Artificiel",
    19 => "Aviaire",
    20 => "Batracien",
    21 => "Bébé",
    22 => "Bête",
    23 => "Canin",
    24 => "Crustacés",
    25 => "Echo",
    26 => "Equin",
    27 => "Félin",
    28 => "Fongique",
    29 => "Marin",
    30 => "Minéral",
    31 => "Mollusque",
    32 => "Mythologique",
    33 => "Nourriture",
    34 => "Poisson",
    35 => "Reptile",
    36 => "Rongeur",
    37 => "Simiesque",
    38 => "Troglodyte",
    39 => "Unique",
    40 => "Végétale",
    41 => "Vers",
    42 => "Vestige",
    43 => "Volant",
  }

  def self.groups
    return @groups
  end

  def self.custom_group(id, name)
    @groups[id] = name
  end
end
