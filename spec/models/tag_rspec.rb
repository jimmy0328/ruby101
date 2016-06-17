require 'spec_helper'
require 'tag'

describe Tag do
  it 'tag count for each roll' do
    tag = Tag.new
    10.times { tag.add }
    expect(tag.count).to eq(10)
  end
end
