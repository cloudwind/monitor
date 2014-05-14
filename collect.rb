load '/home/lacrima/moni/app/controllers/script.rb'
require 'mysql'

class Monitor
def storage
 puts "storage"
  t = Time.now
  puts "#############################################"
  puts t 
  disk = getdisk()
  cpu = getcpu()
  mem = getmem()
  avg = getloadavg()
  bandwidth = getbandwidth()
  tops = gettop()
  con = Mysql.new('localhost', 'root', 'password', 'moni_development')
  rs = con.query("INSERT INTO `collect_data`(`BandwidthTran`, `BandwidthRec`, `BandwidthTranP`, `BandwidthRecP`, `CPUTotal`, `CPUUser`, `CPUSys`, `DiskUsed`, `DiskFree`, `LoadAVG`, `MemTotal`, `MemFree`, `created_at`, `updated_at`) VALUES ('#{bandwidth[2]}','#{bandwidth[0]}','#{bandwidth[3]}','#{bandwidth[1]}','#{cpu[0]}','#{cpu[1]}','#{cpu[2]}','#{disk[0]}','#{disk[1]}','#{avg}','#{mem[0]}','#{mem[1]}','#{t}','#{t}')")

   tops.each do |top|
    
    rs = con.query("INSERT INTO `collect_processes`(`Pid`, `User`, `Cpu`, `Mem`, `Command`, `created_at`, `updated_at`) VALUES ('#{top[0]}','#{top[1]}','#{top[2]}','#{top[3]}','#{top[4]}','#{t}','#{t}')")
    
   end
  con.close
 end
end

obj = Monitor.new
obj.storage()
