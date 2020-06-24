class EmailBoxesController < ApplicationController
    def index
    # @ratings = policy_scope(current_user.ratings)
    @people = Person.all
  end


  def new
    # @ratings = policy_scope(current_user.ratings)
    @email_box = Email_box.new
  end

  def show
    @email_box = Email_box.find(params[:id])
  end

  def create
    @email_box = Email_box.new(email_box_params)
    if @email_box.save
      redirect_to email_box_path(@email_box)
    else
      render :new
    end
  end

  def edit
  end

  def update

  end

private
  def email_box_params
    params.require(:email_box).permit(:firstname, :lastname, :phonenumber, :email, :dob, :zipcode, :gender, :tobaccouser)
  end

end
