class PagesController < ApplicationController
  # before_action :authenticate_user!
  def index
    @projects = Project.where(active: true).limit(5)
    @tasks = Task.all
    @activetasks = Task.where(status: :Active).limit(5)
  end



  def admin_dashboard
    @projects = Project.where(active: true).limit(5)
    @tasks = Task.all
    @activetasks = Task.where(status: :Active).limit(5)
  end

  def devloper_dashboard
    @projects = Project.where(manager: current_user).limit(5)
    @tasks = Task.where(user: current_user).limit(5)
    @activetasks = Task.where(status: :active).limit(5)
  end

  def calender

  end
end
