require 'rails_helper'

RSpec.describe Project, :type => :model do

  it { should validate_presence_of :name}
  it { should validate_uniqueness_of :name}
  it { should validate_presence_of :price}
  it { should validate_presence_of :description}
  it { should validate_presence_of :category_id}
  it { should have_attached_file(:image) }
  it { should validate_attachment_content_type(:image).
              allowing('image/png', 'image/gif').
              rejecting('text/plain', 'text/xml') }

  it { should belong_to :category }
  it { should have_many :order_projects }
  it { should have_many :orders }

end