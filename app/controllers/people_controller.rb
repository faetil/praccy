class PeopleController < ApplicationController
  def index
    @people = Person.search(params[:search])
  end
  def new
    @people = Person.new
  end
  def create
    @people = Person.new(params[:people_params])

    if @people.save
      redirect_to @people
    else
      render 'new'
    end
  end



  private
  def people_params
    params.require(:people).require(:first_name, :last_name, :assessment_count,:organisation_id, :search)
  end 
end
