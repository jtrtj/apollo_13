require 'rails_helper'

describe Astronaut, type: :model do
  describe 'relationships' do
    it 
  end
  describe 'class methods' do
    it '#average_age' do
      astro_1 = Astronaut.create(name: 'sdfa', age: 1, job: 'sdgds')
      astro_2 = Astronaut.create(name: 'sjhg', age: 3, job: 'nbv')

      expect(Astronaut.average_age).to eq(2)
    end
  end
end