require 'rails_helper'
# rubocop:disable Metrics/BlockLength
RSpec.describe Motorcycle, type: :model do
  before :each do
    @category = Category.create(catname: 'Sport Racer')
    @motorcycle = Motorcycle.new(brand: 'Yamaha', model: 'R1', year: 2019,
                                 image: 'https://www.yamaha-motor.com.ph/uploads/2019/01/2019-Yamaha-YZF-R1M-1.jpg',
                                 rental_price: 400, category_id: @category.id)
    @motorcycle.save
  end

  context 'validations' do
    it 'should be valid with valid attributes' do
      expect(@motorcycle).to be_valid
    end
    it 'should be invalid without a brand' do
      @motorcycle.brand = nil
      expect(@motorcycle).to_not be_valid
    end
    it 'should be invalid without a model' do
      @motorcycle.model = nil
      expect(@motorcycle).to_not be_valid
    end
    it 'should be invalid without a year' do
      @motorcycle.year = nil
      expect(@motorcycle).to_not be_valid
    end
    it 'should be valid without an image' do
      @motorcycle.image = nil
      expect(@motorcycle).to be_valid
    end
    it 'should be invalid without a rental price' do
      @motorcycle.rental_price = nil
      expect(@motorcycle).to_not be_valid
    end
    it 'should be invalid without a category' do
      @motorcycle.category_id = nil
      expect(@motorcycle).to_not be_valid
    end
    it 'should be invalid if rental price is less than 0' do
      @motorcycle.rental_price = -1
      expect(@motorcycle).to_not be_valid
    end
    it 'should be invalid if rental price is equal to 0' do
      @motorcycle.rental_price = 0
      expect(@motorcycle).to_not be_valid
    end
  end
  context 'associations' do
    it 'belongs to a category' do
      associate = described_class.reflect_on_association(:category)
      expect(associate.macro).to eq :belongs_to
    end
    it 'has many reservations' do
      associate = described_class.reflect_on_association(:reservations)
      expect(associate.macro).to eq :has_many
    end
  end
end
# rubocop:enable Metrics/BlockLength
