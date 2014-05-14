class CreateCollectData < ActiveRecord::Migration
  def change
    create_table :collect_data do |t|
      t.integer :BandwidthTran
      t.integer :BandwidthRec
      t.integer :BandwidthTranP
      t.integer :BandwidthRecP
      t.float :CPUTotal
      t.float :CPUUser
      t.float :CPUSys
      t.integer :DiskUsed
      t.integer :DiskFree
      t.float :LoadAVG
      t.integer :MemTotal
      t.integer :MemFree

      t.timestamps
    end
  end
end
