load 'script.rb'
require 'mysql'
class ShowController < ApplicationController
  def index
    con = Mysql.new('localhost', 'root', 'password', 'moni_development')
    datas = con.query("SELECT * FROM  `collect_data` ORDER BY id DESC LIMIT 10")
    procss = con.query("SELECT * FROM `collect_processes` WHERE created_at = (SELECT `created_at` FROM `collect_processes` WHERE id = (SELECT Max(id) FROM `collect_processes`))")
    con.close()
    @data = Array.new
    @procs = Array.new
    datas.each_hash do |d|
        @data.push(d)
    end
    procss.each_hash do |p|
        @procs.push(p)
    end    
  end
end
