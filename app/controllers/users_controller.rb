class UsersController < ApplicationController



  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok

  end

  def create
    @user = User.create(name: params[:name])
    render json: @user, status: :ok
  end

  def email
      @reciever = User.find(params[:recieverId])
      @sender = User.find(params[:senderId])


    Mailjet.configure do |config|
      config.api_key = ENV['EMAIL']

      config.secret_key = ENV['EMAIL_SECRET_KEY']

      config.api_version = "v3.1"
    end


  variable = Mailjet::Send.create(messages: [{
      'From'=> {
          'Email'=> "vibhu.mahendru@flatironschool.com",
          'Name'=> 'New Friend Request'
      },
      'To'=> [
          {
              'Email'=> 'vibhumahendru@gmail.com',
              'Name'=> "#{@reciever.name}"
          }
      ],
      'Subject'=> 'FR',
      'TextPart'=> "You got a friend request from: #{@sender.name}
      "

  }]
  )
  p variable.attributes['Messages']
  end






end
