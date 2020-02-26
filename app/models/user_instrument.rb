class UserInstrument < ApplicationRecord
  belongs_to :user
  belongs_to :instrument
  INSTRUMENTS_ARRAY = [
    "Accordion",
    "Bagpipes",
    "Banjo",
    "Bass guitar",
    "Bassoon",
    "Cello",
    "Clarinet",
    "Clavichord",
    "Cornet",
    "Cymbal",
    "Dhime",
    "Didgeridoo",
    "Double bass",
    "Drum",
    "Flute",
    "French horn",
    "Glass harmonica",
    "Glockenspiel",
    "Gong",
    "Guitar",
    "Harmonica",
    "Harp",
    "Mandolin",
    "Marimba",
    "Melodica",
    "Oboe",
    "Octobass",
    "Organ",
    "Pan Pipes",
    "Panduri",
    "Piano",
    "Recorder",
    "Saxophone",
    "Sitar",
    "Steelpan",
    "Synthesizer",
    "Tambourine",
    "Triangle",
    "Trombone",
    "Trumpet",
    "Tuba",
    "Ukulele",
    "Viola",
    "Violin",
    "Vocal cords",
    "Xylophone",
    "Zither"
  ]
end
