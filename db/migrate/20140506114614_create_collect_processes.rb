class CreateCollectProcesses < ActiveRecord::Migration
  def change
    create_table :collect_processes do |t|
      t.integer :Pid
      t.string :User
      t.string :Cpu
      t.string :Mem
      t.string :Command

      t.timestamps
    end
  end
end
