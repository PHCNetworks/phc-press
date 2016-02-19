require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

module Phcpress
  RSpec.describe Postprocess::StatusesController, type: :controller do

    # This should return the minimal set of attributes required to create a valid
    # Postprocess::Status. As you add validations to Postprocess::Status, be sure to
    # adjust the attributes here as well.
    let(:valid_attributes) {
      skip("Add a hash of attributes valid for your model")
    }

    let(:invalid_attributes) {
      skip("Add a hash of attributes invalid for your model")
    }

    # This should return the minimal set of values that should be in the session
    # in order to pass any filters (e.g. authentication) defined in
    # Postprocess::StatusesController. Be sure to keep this updated too.
    let(:valid_session) { {} }

    describe "GET #index" do
      it "assigns all postprocess_statuses as @postprocess_statuses" do
        status = Postprocess::Status.create! valid_attributes
        get :index, {}, valid_session
        expect(assigns(:postprocess_statuses)).to eq([status])
      end
    end

    describe "GET #show" do
      it "assigns the requested postprocess_status as @postprocess_status" do
        status = Postprocess::Status.create! valid_attributes
        get :show, {:id => status.to_param}, valid_session
        expect(assigns(:postprocess_status)).to eq(status)
      end
    end

    describe "GET #new" do
      it "assigns a new postprocess_status as @postprocess_status" do
        get :new, {}, valid_session
        expect(assigns(:postprocess_status)).to be_a_new(Postprocess::Status)
      end
    end

    describe "GET #edit" do
      it "assigns the requested postprocess_status as @postprocess_status" do
        status = Postprocess::Status.create! valid_attributes
        get :edit, {:id => status.to_param}, valid_session
        expect(assigns(:postprocess_status)).to eq(status)
      end
    end

    describe "POST #create" do
      context "with valid params" do
        it "creates a new Postprocess::Status" do
          expect {
            post :create, {:postprocess_status => valid_attributes}, valid_session
          }.to change(Postprocess::Status, :count).by(1)
        end

        it "assigns a newly created postprocess_status as @postprocess_status" do
          post :create, {:postprocess_status => valid_attributes}, valid_session
          expect(assigns(:postprocess_status)).to be_a(Postprocess::Status)
          expect(assigns(:postprocess_status)).to be_persisted
        end

        it "redirects to the created postprocess_status" do
          post :create, {:postprocess_status => valid_attributes}, valid_session
          expect(response).to redirect_to(Postprocess::Status.last)
        end
      end

      context "with invalid params" do
        it "assigns a newly created but unsaved postprocess_status as @postprocess_status" do
          post :create, {:postprocess_status => invalid_attributes}, valid_session
          expect(assigns(:postprocess_status)).to be_a_new(Postprocess::Status)
        end

        it "re-renders the 'new' template" do
          post :create, {:postprocess_status => invalid_attributes}, valid_session
          expect(response).to render_template("new")
        end
      end
    end

    describe "PUT #update" do
      context "with valid params" do
        let(:new_attributes) {
          skip("Add a hash of attributes valid for your model")
        }

        it "updates the requested postprocess_status" do
          status = Postprocess::Status.create! valid_attributes
          put :update, {:id => status.to_param, :postprocess_status => new_attributes}, valid_session
          status.reload
          skip("Add assertions for updated state")
        end

        it "assigns the requested postprocess_status as @postprocess_status" do
          status = Postprocess::Status.create! valid_attributes
          put :update, {:id => status.to_param, :postprocess_status => valid_attributes}, valid_session
          expect(assigns(:postprocess_status)).to eq(status)
        end

        it "redirects to the postprocess_status" do
          status = Postprocess::Status.create! valid_attributes
          put :update, {:id => status.to_param, :postprocess_status => valid_attributes}, valid_session
          expect(response).to redirect_to(status)
        end
      end

      context "with invalid params" do
        it "assigns the postprocess_status as @postprocess_status" do
          status = Postprocess::Status.create! valid_attributes
          put :update, {:id => status.to_param, :postprocess_status => invalid_attributes}, valid_session
          expect(assigns(:postprocess_status)).to eq(status)
        end

        it "re-renders the 'edit' template" do
          status = Postprocess::Status.create! valid_attributes
          put :update, {:id => status.to_param, :postprocess_status => invalid_attributes}, valid_session
          expect(response).to render_template("edit")
        end
      end
    end

    describe "DELETE #destroy" do
      it "destroys the requested postprocess_status" do
        status = Postprocess::Status.create! valid_attributes
        expect {
          delete :destroy, {:id => status.to_param}, valid_session
        }.to change(Postprocess::Status, :count).by(-1)
      end

      it "redirects to the postprocess_statuses list" do
        status = Postprocess::Status.create! valid_attributes
        delete :destroy, {:id => status.to_param}, valid_session
        expect(response).to redirect_to(postprocess_statuses_url)
      end
    end

  end
end
