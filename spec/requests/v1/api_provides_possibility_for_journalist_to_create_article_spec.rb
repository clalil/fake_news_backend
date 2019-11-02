RSpec.describe 'Can create article with attributes' do

  describe "can post article successfully" do
    let(:journalist) { create(:user, role: 'journalist') }
    #let!(:article) { create(:article, journalist: journalist) }
    let(:credentials) { journalist.create_new_auth_token}
    let(:headers) {{ HTTP_ACCEPT: "application/json" }.merge!(credentials)}

    before do
      
     # binding.pry
      

      post '/v1/articles', params: {
        title: "Which drugs can kill you?",
        content: "Oh it is all of them!",
        role: "journalist",
        image: [{
          type: 'application/jpg',
          encoder: 'name=new_iphone.jpg;base64',
          data: 'iVBORw0KGgoAAAANSUhEUgAABjAAAAOmCAYAAABFYNwHAAAgAElEQVR4XuzdB3gU1cLG8Te9EEgISQi9I71KFbBXbFixN6zfvSiIjSuKInoVFOyIDcWuiKiIol4Q6SBVOtI7IYSWBkm',
          extension: 'jpg'
        }]
      },
      headers: headers
      
      #binding.pry
      

    end

    it "returns 200 response" do
      expect(response.status).to eq 200
    end
    
    it "that has an image attached" do
      article = Article.find_by(title: response.request.params['title'])
      expect(article.image.attached?).to eq true  
    end
  end

  describe "cannot post article successfully with incomplete information" do
    let(:journalist) { create(:user, role: 'journalist') }
    #let!(:article) { create(:article, journalist: journalist) }
    let(:credentials) { journalist.create_new_auth_token}
    let(:headers) {{ HTTP_ACCEPT: "application/json" }.merge!(credentials)}

    before do
      post '/v1/articles', params: {
        title: "Wh",
        content: "Oh",
        image: [{
          type: 'application/jpg',
          encoder: 'name=new_iphone.jpg;base64',
          data: 'iVBORw0KGgoAAAANSUhEUgAABjAAAAOmCAYAAABFYNwHAAAgAElEQVR4XuzdB3gU1cLG8Te9EEgISQi9I71KFbBXbFixN6zfvSiIjSuKInoVFOyIDcWuiKiIol4Q6SBVOtI7IYSWBkm',
          extension: 'jpg'
        }]
      },
      headers: headers
    end

    it "returns an error status when title and content is incomplete" do
      article = Article.find_by(title: response.request.params['title'])
      expect(response.status).to eq 400
    end

    it "returns an error message when title and content is incomplete" do
      article = Article.find_by(title: response.request.params['title'])
      expect(response_json['error_message']).to eq 'Title is too short (minimum is 3 characters) and Content is too short (minimum is 10 characters)'
    end
  end
end