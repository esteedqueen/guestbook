require 'rails_helper'

describe EntriesController do

  # # This should return the minimal set of attributes required to create a valid
  # # Entry. As you add validations to Entry, be sure to
  # # adjust the attributes here as well.
  # let(:valid_attributes) {
  #   skip("Add a hash of attributes valid for your model")
  # }

  # let(:invalid_attributes) {
  #   skip("Add a hash of attributes invalid for your model")
  # }

  # # This should return the minimal set of values that should be in the session
  # # in order to pass any filters (e.g. authentication) defined in
  # # EntriesController. Be sure to keep this updated too.
  # let(:valid_session) { {} }

  # describe "GET #index" do
  #   it "assigns all entries as @entries" do
  #     entry = Entry.create! valid_attributes
  #     get :index, params: {}, session: valid_session
  #     expect(assigns(:entries)).to eq([entry])
  #   end
  # end

  # describe "GET #show" do
  #   it "assigns the requested entry as @entry" do
  #     entry = Entry.create! valid_attributes
  #     get :show, params: {id: entry.to_param}, session: valid_session
  #     expect(assigns(:entry)).to eq(entry)
  #   end
  # end

  # describe "GET #new" do
  #   it "assigns a new entry as @entry" do
  #     get :new, params: {}, session: valid_session
  #     expect(assigns(:entry)).to be_a_new(Entry)
  #   end
  # end

  # describe "GET #edit" do
  #   it "assigns the requested entry as @entry" do
  #     entry = Entry.create! valid_attributes
  #     get :edit, params: {id: entry.to_param}, session: valid_session
  #     expect(assigns(:entry)).to eq(entry)
  #   end
  # end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Entry" do
        expect {
          post :create, entry: attributes_for(:entry)
        }.to change(Entry, :count).by(1)
      end

      it "assigns a newly created entry as @entry" do
        post :create, entry: attributes_for(:entry)
        expect(assigns(:entry)).to be_a(Entry)
        expect(assigns(:entry)).to be_persisted
      end

      it "redirects to entry listings" do
        post :create, entry: attributes_for(:entry)
        expect(response).to redirect_to(entries_path)
      end
    end

    context "with invalid params" do
      it "entry is invalid and unsaved" do
        post :create, entry: attributes_for(:entry, name: nil)
        expect(assigns(:entry)).to_not be_valid
      end
    end
  end

  # describe "DELETE #destroy" do
  #   it "destroys the requested entry" do
  #     entry = Entry.create! valid_attributes
  #     expect {
  #       delete :destroy, params: {id: entry.to_param}, session: valid_session
  #     }.to change(Entry, :count).by(-1)
  #   end

  #   it "redirects to the entries list" do
  #     entry = Entry.create! valid_attributes
  #     delete :destroy, params: {id: entry.to_param}, session: valid_session
  #     expect(response).to redirect_to(entries_url)
  #   end
  # end

end
