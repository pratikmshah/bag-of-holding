class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      # need to complete hash values parsed into
      t.timestamps
    end
  end
end
