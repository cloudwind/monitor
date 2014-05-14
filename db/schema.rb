# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140506114614) do

  create_table "collect_data", force: true do |t|
    t.integer  "BandwidthTran"
    t.integer  "BandwidthRec"
    t.integer  "BandwidthTranP"
    t.integer  "BandwidthRecP"
    t.float    "CPUTotal"
    t.float    "CPUUser"
    t.float    "CPUSys"
    t.integer  "DiskUsed"
    t.integer  "DiskFree"
    t.float    "LoadAVG"
    t.integer  "MemTotal"
    t.integer  "MemFree"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collect_processes", force: true do |t|
    t.integer  "Pid"
    t.string   "User"
    t.string   "Cpu"
    t.string   "Mem"
    t.string   "Command"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
