class EntriesController < ApplicationController
  def index
    @entry = Entry.new
    @entries = Entry.order('created_at DESC')
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.create(entry_params)
    if @entry.save
      redirect_to root_path, notice: 'Entry successfully created'
    else
      render :new
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to root_path, notice: 'Entry deleted'
  end  

  private

  def entry_params
    params.require(:entry).permit(:name, :message)
  end

end