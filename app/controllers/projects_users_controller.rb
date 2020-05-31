class ProjectsUsersController < ApplicationController
  before_action :set_projects_user, only: [:show, :edit, :update, :destroy]

  # GET /projects_users
  # GET /projects_users.json
  def index
    @projects_users = ProjectsUser.all
    @projects_users = ProjectsUser.page(params[:page]).per(3)
  end

  # GET /projects_users/1
  # GET /projects_users/1.json
  def show
  end

  # GET /projects_users/new
  def new
    @projects_user = ProjectsUser.new
  end

  # GET /projects_users/1/edit
  def edit
  end

  # POST /projects_users
  # POST /projects_users.json
  def create
    @projects_user = ProjectsUser.new(projects_user_params)

    respond_to do |format|
      if @projects_user.save
        format.html { redirect_to @projects_user, notice: 'Projects user was successfully created.' }
        format.json { render :show, status: :created, location: @projects_user }
      else
        format.html { render :new }
        format.json { render json: @projects_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects_users/1
  # PATCH/PUT /projects_users/1.json
  def update
    respond_to do |format|
      if @projects_user.update(projects_user_params)
        format.html { redirect_to @projects_user, notice: 'Projects user was successfully updated.' }
        format.json { render :show, status: :ok, location: @projects_user }
      else
        format.html { render :edit }
        format.json { render json: @projects_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_users/1
  # DELETE /projects_users/1.json
  def destroy
    @projects_user.destroy
    respond_to do |format|
      format.html { redirect_to projects_users_url, notice: 'Projects user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projects_user
      @projects_user = ProjectsUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projects_user_params
      params.require(:projects_user).permit(:project_id, :user_id)
    end
end
