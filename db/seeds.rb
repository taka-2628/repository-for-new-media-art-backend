puts "🌱 Seeding data..."
# Seed the database here

puts "Seeding users..."
User.create([
  {
    username: "taka-2628",
    profile_image: "https://avatars.githubusercontent.com/u/77429137?v=4",
    intro: "Architectural Designer turned Creative Developer/Product Designer"
  },
  {
    username: "th",
    profile_image: "https://archinect.imgix.net/uploads/45/45761a2b087dab7cc5cb74b1accecf13.jpg?fit=crop&auto=compress%2Cformat&w=300",
    intro: "Architectural Designer"
  },
  {
    username: "jojo",
    profile_image: "https://images.squarespace-cdn.com/content/v1/6097ecb813c4e77969c1bf95/b4904932-c224-43c9-a6e4-3cac4f65bba5/JO+HEE.jpg",
    intro: "XR Designer & Developer"
  }
])

puts "Seeding projects..."
Project.create([
  { 
    user_id: 1,
    title: "CAPE TOWN BABOON INTERACTIVE",
    subtitle: "Animated Interactive 3D Web App built with Three.js and Blender",
    description: "Interactive topographic model of Cape Town with animated baboons simulating the behaviors of the baboon troops in the city. A predictive model of baboon troops is created based on behavioral algorithms (patch selection model), which becomes the basis for the interactive model.",
    image: "https://takashi-honzawa.com/static/media/03-Baboon-Interactive-Model.9194ad4f1ee7026b86ae.gif",
    url: "https://taka-2628.github.io/NoMoreMonkeyBusiness/",
    github_url: "https://github.com/taka-2628/NoMoreMonkeyBusiness"
  }, 
  {
    user_id: 1,
    title: "AMERICAN PETROLEUMSCAPE",
    subtitle: "Interactive Archive of Satelite Images of 155 Oil Refineries in America",
    description: "AMERICAN PETROLEUMSCAPE is developed as a part of a design/research project, which investigates the environmental and health issues around oil refineries. The archive contains satellite images of all of 155 oil refineries in the United States.",
    image: "https://takashi-honzawa.com/static/media/04-American-Petroleumscape.78f47302ef90df4d5ac5.gif",
    url: "https://taka-2628.github.io/coding-for-spatial-practices/project-03/",
    github_url: "https://github.com/taka-2628/coding-for-spatial-practices/project-03/"
  }
])

puts "Seeding comments..."
Comment.create([
  {
    user_id: 2,
    project_id: 1,
    body: "Hi, cool project. How did you bring your model into Three.js from Blender?"
  },
  {
    user_id: 1,
    project_id: 1,
    body: "Hi th, you can exmport the 3d file as glTF (GL Transmission Format). Three.js has GLTFLoader, which you can use to import your model from Blender. Hope this helps"
  },
  {
    user_id: 2,
    project_id: 1,
    body: "Thanks taka-2628, I'll git it a try."
  }
])

puts "Seeding genres..."
Genre.create([
  {genre: "virtual art"},
  {genre: "computer graphics"},
  {genre: "computer animation"},
  {genre: "digital art"},
  {genre: "interactive art"},
  {genre: "sound art"},
  {genre: "Internet art"},
  {genre: "video games"},
  {genre: "robotics"},
  {genre: "3D printing"},
  {genre: "cyborg art"}
])

puts "Seeding technologies..."
Technology.create([
  {technology: "Python", category: "language"},
  {technology: "JavaScript", category: "language"},
  {technology: "Ruby", category: "language"},
  {technology: "Java", category: "language"},
  {technology: "R", category: "language"},
  {technology: "C", category: "language"},
  {technology: "C#", category: "language"},
  {technology: "C++", category: "language"},
  {technology: "C++", category: "language"},
  {technology: "Objective-C", category: "language"},
  {technology: "Three.js", category: "library/framework"},
  {technology: "D3.js", category: "library/framework"},
  {technology: "p5.js", category: "library/framework"},
  {technology: "ml5.js", category: "library/framework"},
  {technology: "Matter.js", category: "library/framework"},
  {technology: "Phaser.js", category: "library/framework"},
  {technology: "howler.js", category: "library/framework"},
  {technology: "Natural", category: "library/framework"},
  {technology: "Processing", category: "library/framework"},
  {technology: "Processing.py", category: "library/framework"},
  {technology: "generativepy", category: "library/framework"},
  {technology: "Shoebot", category: "library/framework"},
  {technology: "Nodebox", category: "library/framework"},
  {technology: "Cinder", category: "library/framework"},
  {technology: "openFrameworks", category: "library/framework"},
  {technology: "Mapbox", category: "library/framework"},
  {technology: "Blender", category: "app software"},
  {technology: "ZBrush", category: "app software"},
  {technology: "Unity", category: "app software"},
  {technology: "UnrealEngine", category: "app software"},
  {technology: "Twinmotion", category: "app software"},
  {technology: "Amazon Sumerian", category: "app software"},
  {technology: "Google VR", category: "app software"},
  {technology: "CRYENGINE", category: "app software"},
  {technology: "Oculus Medium", category: "app software"},
  {technology: "Cinema 4D", category: "app software"},
  {technology: "3ds Max", category: "app software"},
  {technology: "Maya", category: "app software"},
  {technology: "Arnold", category: "app software"},
  {technology: "Rhinoceros 3D", category: "app software"},
  {technology: "V-Ray", category: "app software"},
  {technology: "Lumion", category: "app software"},
  {technology: "Enscape", category: "app software"},
  {technology: "Photoshop", category: "app software"},
  {technology: "Illustrator", category: "app software"},
  {technology: "InDesign", category: "app software"},
  {technology: "Affter Effects", category: "app software"},
  {technology: "Premiere Pro", category: "app software"},
  {technology: "Premiere Rush", category: "app software"},
  {technology: "Lightroom", category: "app software"},
  {technology: "XD", category: "app software"},
  {technology: "Spark", category: "app software"},
  {technology: "Substance", category: "app software"},
  {technology: "Fresco", category: "app software"},
  {technology: "Dimension", category: "app software"},
  {technology: "Arduino", category: "hardware"},
  {technology: "Raspberry Pi", category: "hardware"},
  {technology: "Adafruit", category: "hardware"},
  {technology: "Kasa Smart Devices", category: "hardware"},
  {technology: "Oculus", category: "hardware"},
])

puts "Seeding project-genres..."
ProjectGenre.create([
  {
    project_id: 1,
    genre_id: 3
  },
  {
    project_id: 1,
    genre_id: 5
  },
  {
    project_id: 1,
    genre_id: 7
  },
  {
    project_id: 2,
    genre_id: 5
  },
  {
    project_id: 2,
    genre_id: 7
  }
])

puts "Seeding project-technologies..."
ProjectTechnology.create([
  {
    project_id: 1,
    technology_id: 2
  },
  {
    project_id: 1,
    technology_id: 11
  },
  {
    project_id: 1,
    technology_id: 27
  },
  {
    project_id: 1,
    technology_id: 40
  },
  {
    project_id: 2,
    technology_id: 1
  },
  {
    project_id: 2,
    technology_id: 2
  },
  {
    project_id: 2,
    technology_id: 26
  }
])


puts "✅ Done seeding!"