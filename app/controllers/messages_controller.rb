class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @messages = Message.all.order(created_at: :desc).to_a
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to @message, notice: 'Message was successfully created.' }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: format_errors(@message.errors), status: :unprocessable_entity }
      end
    end
  end

  private

  def message_params
    params.fetch(:message) { {} }.permit!
  end

  def format_errors(errors)
    {
      errors: errors,
      message: errors.full_messages.join(', ')
    }
  end
end
