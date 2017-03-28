describe 'Validation' do
  context 'given valid data' do
    it 'should be valid' do
      order = Order.new
      order.order_items.build(name: 'name1')
      order.order_items.build(name: 'name2')
      expect(order).to be_valid
    end

    it 'not should be valid' do
      order = Order.new
      order.order_items.build(name: 'name1')
      order.order_items.build(name: 'name1')

      expect(order).to_not be_valid
    end
  end

  context "error" do
    subject { order = Order.new
      order.order_items.build(name: 'name1')
      order.order_items.build(name: 'name1')
    }

    before { subject.valid? }

    it "should show custom message" do
      expect(subject.errors[:name]).to include "Its not valid"
    end
  end
end
