require 'rails_helper'

RSpec.describe Job do
  it 'works' do
    expect(1).to eq(1)
  end

  it 'has a title and a description' do
    job = Job.new(title: 'my title', description: 'my description')
    expect(job.title).to eq('my title')
    expect(job.description).to eq('my description')
  end

  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
end