class AddConfirmableToDevise < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_send_at, :datetime
    add_column :users, :confirmed_email, :string
    add_index :users, :confirmation_token, unique: true

    execute("UPDATE users SET confirmed_at = datetime('now', 'localtime')")
  end

  def down
    remove_columns :users, :confirmation_token, :confirmed_at, :confirmation_send_at
    remove_columns :users, :unconfirmed_email
  end
end
