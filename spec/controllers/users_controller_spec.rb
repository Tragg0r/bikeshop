require 'rails_helper'

describe UsersController, :type => :controller do
  before do

    @user = User.create!(:user, first_name: "Daniel", last_name: "Schmidt", email: "daniel.schmidt86@outlook.com", password: "123456")
    @user2 = User.create!(:user, first_name: "Michi", last_name: "Noob", email: "noob@example.com", password: "123456")

  end

  describe 'GET #show' do
     context 'User is logged in' do
       before do
         sign_in @user
       end

       it "loads correct user details" do

<<<<<<< HEAD
        get :show, params: {id: @user.id}
=======
        get :show, params:{id: @user.id}
>>>>>>> 0a6ea5a7faef54d8afe0b71fd0d17e0ed052ec6a

        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq @user

       end
     end

     context 'No user is logged in' do
       it 'redirects to login' do
<<<<<<< HEAD
         get :show, id: @user.id
         expect(response).to redirect_to(new_user_session_path)
=======
         get :show, id: user.id
         expect(response).to redirect_to(root_path)
>>>>>>> 0a6ea5a7faef54d8afe0b71fd0d17e0ed052ec6a
       end
     end

     context "Current User is not allowed" do

       before do
<<<<<<< HEAD
         sign_in @user2
=======
         sign_in @user
>>>>>>> 0a6ea5a7faef54d8afe0b71fd0d17e0ed052ec6a
       end

       it "to see other users details" do

<<<<<<< HEAD
         get :show, id: @user.id
=======
         get :show, params:{id: @user2.id}
>>>>>>> 0a6ea5a7faef54d8afe0b71fd0d17e0ed052ec6a

         expect(response).to have_http_status(302)
         expect(response).to redirect_to(root_path)
       end
     end
  end

end
