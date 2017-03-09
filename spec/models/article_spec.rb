require 'rails_helper'
 
RSpec.describe Article do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "#subject" do
  	it "returns the article title" do
  		article = create(:article, title: 'Lorem ipsum')
  		expect(article.subject).to eq 'Lorem ipsum'
  	end
  end

  describe '#last_comment' do
   it 'returns last comment' do
     article = create(:article_with_comments) # наша новая фабрика
     expect(article.last_comment).eq 'comment body 1'
    end
  end
end