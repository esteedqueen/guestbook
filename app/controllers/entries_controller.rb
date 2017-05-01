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
      redirect_to entries_path, notice: 'Entry successfully created'
    else
      render :new
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:name, :message)
  end

end