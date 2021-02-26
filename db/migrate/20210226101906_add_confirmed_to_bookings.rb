class AddConfirmedToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :confirmed, :string, :default => 'pending'
  end
end
