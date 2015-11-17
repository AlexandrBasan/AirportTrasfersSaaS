require 'spec_helper'

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

describe VehicletypesController do

  # This should return the minimal set of attributes required to create a valid
  # Vehicletype. As you add validations to Vehicletype, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "vtype" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VehicletypesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all vehicletypes as @vehicletypes" do
      vehicletype = Vehicletype.create! valid_attributes
      get :index, {}, valid_session
      assigns(:vehicletypes).should eq([vehicletype])
    end
  end

  describe "GET show" do
    it "assigns the requested vehicletype as @vehicletype" do
      vehicletype = Vehicletype.create! valid_attributes
      get :show, {:id => vehicletype.to_param}, valid_session
      assigns(:vehicletype).should eq(vehicletype)
    end
  end

  describe "GET new" do
    it "assigns a new vehicletype as @vehicletype" do
      get :new, {}, valid_session
      assigns(:vehicletype).should be_a_new(Vehicletype)
    end
  end

  describe "GET edit" do
    it "assigns the requested vehicletype as @vehicletype" do
      vehicletype = Vehicletype.create! valid_attributes
      get :edit, {:id => vehicletype.to_param}, valid_session
      assigns(:vehicletype).should eq(vehicletype)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Vehicletype" do
        expect {
          post :create, {:vehicletype => valid_attributes}, valid_session
        }.to change(Vehicletype, :count).by(1)
      end

      it "assigns a newly created vehicletype as @vehicletype" do
        post :create, {:vehicletype => valid_attributes}, valid_session
        assigns(:vehicletype).should be_a(Vehicletype)
        assigns(:vehicletype).should be_persisted
      end

      it "redirects to the created vehicletype" do
        post :create, {:vehicletype => valid_attributes}, valid_session
        response.should redirect_to(Vehicletype.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved vehicletype as @vehicletype" do
        # Trigger the behavior that occurs when invalid params are submitted
        Vehicletype.any_instance.stub(:save).and_return(false)
        post :create, {:vehicletype => { "vtype" => "invalid value" }}, valid_session
        assigns(:vehicletype).should be_a_new(Vehicletype)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Vehicletype.any_instance.stub(:save).and_return(false)
        post :create, {:vehicletype => { "vtype" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested vehicletype" do
        vehicletype = Vehicletype.create! valid_attributes
        # Assuming there are no other vehicletypes in the database, this
        # specifies that the Vehicletype created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Vehicletype.any_instance.should_receive(:update).with({ "vtype" => "MyString" })
        put :update, {:id => vehicletype.to_param, :vehicletype => { "vtype" => "MyString" }}, valid_session
      end

      it "assigns the requested vehicletype as @vehicletype" do
        vehicletype = Vehicletype.create! valid_attributes
        put :update, {:id => vehicletype.to_param, :vehicletype => valid_attributes}, valid_session
        assigns(:vehicletype).should eq(vehicletype)
      end

      it "redirects to the vehicletype" do
        vehicletype = Vehicletype.create! valid_attributes
        put :update, {:id => vehicletype.to_param, :vehicletype => valid_attributes}, valid_session
        response.should redirect_to(vehicletype)
      end
    end

    describe "with invalid params" do
      it "assigns the vehicletype as @vehicletype" do
        vehicletype = Vehicletype.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Vehicletype.any_instance.stub(:save).and_return(false)
        put :update, {:id => vehicletype.to_param, :vehicletype => { "vtype" => "invalid value" }}, valid_session
        assigns(:vehicletype).should eq(vehicletype)
      end

      it "re-renders the 'edit' template" do
        vehicletype = Vehicletype.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Vehicletype.any_instance.stub(:save).and_return(false)
        put :update, {:id => vehicletype.to_param, :vehicletype => { "vtype" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested vehicletype" do
      vehicletype = Vehicletype.create! valid_attributes
      expect {
        delete :destroy, {:id => vehicletype.to_param}, valid_session
      }.to change(Vehicletype, :count).by(-1)
    end

    it "redirects to the vehicletypes list" do
      vehicletype = Vehicletype.create! valid_attributes
      delete :destroy, {:id => vehicletype.to_param}, valid_session
      response.should redirect_to(vehicletypes_url)
    end
  end

end