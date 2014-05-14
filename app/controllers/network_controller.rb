require 'mysql'

class NetworkController < ApplicationController
def index()
    con = Mysql.new('localhost', 'root', 'password', 'moni_development')
    datas = con.query("SELECT * FROM  `collect_data` ORDER BY id DESC LIMIT 10")
    con.close()
    @data = Array.new
    datas.each_hash do |d|
        @data.push(d)
    end
end
end
