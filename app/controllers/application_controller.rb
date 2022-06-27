class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # GET PROJECTS
  get "/projects" do 
    projects = Project.all
    projects.to_json(include: [:user, {comments: {include: :user}}, :genres, :technologies])
  end

  # GET USERS
  get "/users" do
    users = User.all
    users.to_json(include: [:comments])
  end

  # POST USERS
  post "/users" do
    user = User.create(
      username: params[:username],
      profile_image: params[:profile_image],
      intro: params[:intro]
    )
    user.to_json
  end

  # GET GENRES
  get "/genres" do
    genres = Genre.all
    genres.to_json
  end

  # GET TECHNOLOGIES
  get "/technologies" do
    technologies = Technology.all
    technologies.to_json
  end

end
