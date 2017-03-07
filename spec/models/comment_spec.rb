require 'rails_helper'
 
RSpec.describe Comment do
  it { should belong_to :article }
end