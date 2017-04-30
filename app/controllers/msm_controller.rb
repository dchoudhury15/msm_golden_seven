class MsmController < ApplicationController
  def index
    @all_directors=Director.all.order({:created_at => :desc})
    render("msm/index.html.erb")
  end

  def show_detail
    @d=Director.find(params[:id_num])
    render("msm/show_detail.html.erb")
  end

  def new_form
    render("msm/new_form.html.erb")
  end

  def create
    new_d=Director.new
    new_d.name=params["the_name"]
    new_d.dob=params["the_dob"]
    new_d.bio=params["the_bio"]
    new_d.image_url=params["the_image_url"]
    new_d.save
    redirect_to("/directors")
  end

  def edit_form
    @the_director=Director.find(params[:id_num])
    render("msm/edit_detail.html.erb")
  end

  def update
    #code
    new_d=Director.find(params[:id_num])
    new_d.name=params["the_name"]
    new_d.dob=params["the_dob"]
    new_d.bio=params["the_bio"]
    new_d.image_url=params["the_image_url"]
    new_d.save
    redirect_to("/directors/" + new_d.id.to_s)
  end


  def delete
    #code
    new_d=Director.find(params[:id_num])
    new_d.destroy
    redirect_to("/directors/")
  end
end
