require 'rails_helper'

describe EntriesController do
  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Entry' do
        expect {
          post :create, params: { entry: attributes_for(:entry) }
        }.to change(Entry, :count).by(1)
      end

      it 'assigns a newly created entry as @entry' do
        post :create, params: { entry: attributes_for(:entry) }
        expect(assigns(:entry)).to be_a(Entry)
        expect(assigns(:entry)).to be_persisted
      end

      it 'redirects to entry listings' do
        post :create, params: { entry: attributes_for(:entry) }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'with invalid params' do
      it 'entry is invalid and unsaved' do
        post :create, params: { entry: attributes_for(:entry, name: nil) }
        expect(assigns(:entry)).to_not be_valid
      end

      it 'entry is invalid and redirects to entry listings' do
        post :create, params: { entry: attributes_for(:entry, name: nil) }
        expect(response).to render_template(:new)
      end
    end
  end

  describe 'DELETE #destroy' do
    before :each do
      @entry = create(:entry)
    end

    it 'deletes the entry from the database' do
      expect {
        delete :destroy, params: { id: @entry }
      }.to change(Entry, :count).by(-1)
    end

    it 'redirects to home listings page' do
      delete :destroy, params: { id: @entry }
      expect(response).to redirect_to root_path
    end
  end
end
