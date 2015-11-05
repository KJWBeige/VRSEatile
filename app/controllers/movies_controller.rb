class MoviesController < ApplicationController
  def index
    if current_user
      @today = Date.today
      @movies = Movie.where("date_to > '#{@today}' or date_to is null")
    else
      render 'welcome'
    end
  end

  def welcome
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to admins_movies_path, notice: "Movie was successfully created."
    else
      redirect_to admins_movies_path, notice: "Failed to create a movie."
    end
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to admins_movies_path, notice: "Movie was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to admins_movies_path, notice: "Movie was succesfully destroyed."
  end

  private
  def movie_params
    params.require(:movie).permit(:title)
  end
  end
