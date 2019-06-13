class Order < ApplicationRecord

	has_many :order_items
	belongs_to :client

	enum payment:{クレジット: 0, 銀行振込: 1, 代引き: 2}
	enum shipment_status:{準備中: 0, 発送中: 1, 配達済: 2}

end


