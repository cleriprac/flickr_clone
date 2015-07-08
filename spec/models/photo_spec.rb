require 'rails_helper'

describe Photo do
  it { should validate_presence_of :title}
  it { should validate_presence_of :description}
  it { should respond_to(:image_file_size)}
  it { should respond_to(:image_file_name)}
  it { should respond_to(:image_content_type)}
  # it { should have_attached_file :image}
  # it { should belong_to :user}
end
