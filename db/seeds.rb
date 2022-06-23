puts "🌱 Seeding data..."
# Seed the database here

puts "Seeding users..."
Users.create([
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
Projects.create([
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
    subtitle: "Interactive Archive of Satelite Images of 155 Oil Refineries in America"
    description: "AMERICAN PETROLEUMSCAPE is developed as a part of a design/research project, which investigates the environmental and health issues around oil refineries. The archive contains satellite images of all of 155 oil refineries in the United States.",
    image: "https://takashi-honzawa.com/static/media/04-American-Petroleumscape.78f47302ef90df4d5ac5.gif",
    url: "https://taka-2628.github.io/coding-for-spatial-practices/project-03/",
    github_url: "https://github.com/taka-2628/coding-for-spatial-practices/project-03/"
  }
])

puts "Seeding comments..."
Comments.create([
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
Genres.create([
  {
    project_id: 1,

  }
])

puts "Seeding technologies..."


puts "✅ Done seeding!"
