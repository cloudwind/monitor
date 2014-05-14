def getdisk()
  p = '{print $3" "$4}'
  cmd = "df -m | grep /sda6 | awk '#{p}'"
  out = %x[#{cmd}]
  return out.split
end

def getname()
  cmd = "uname -n"
  out = %x[#{cmd}]
  return out.to_s
end

def gettop()
  p = '{print $1" "$2" "$9" "$10" "$12}'
  cmd = "top -b -n 1|awk '#{p}'"
  #cmd = "top -b -n 1"
  out = %x[#{cmd}]
  outa = out.split("\n")
  outa = outa[7..outa.count]
  a = []
  outa.each do |x| 
    a << x.split
  end
  a = a.sort_by{|b| b[3]}.reverse
  return a
end

def getmem()
  cmd = "cat /proc/meminfo |grep Mem | awk '{print $2}'"
  out = %x[#{cmd}]
  return out.split("\n")
end

def getloadavg()
  cmd = "cat /proc/loadavg |cut -d' ' -f 1" 
  out = %x[#{cmd}]
  return out.to_s
end

def getuptime()
  cmd = "uptime | cut -d' ' -f 1" 
  out = %x[#{cmd}]
  return out.to_s
end

def getcpu()
  #p = '{print "Total Usage "100-$8"\nUser Process "$2"\n System Process "$4"\n Priority Upgrade Nice "$6"\n not used "$8"\nI/O "$10"\nHardware Interrupts "$12"\nSoftware interrupts "$14"\n Steal Time "$16}'
  p = '{print 100-$8" "$2" "$4}'
  cmd = "top -b -n 1 | grep ^'%Cpu(s)' | awk '#{p}'" 
  out = %x[#{cmd}]
  return out.split()
end

def getbandwidth()
  p = '{print $1" "$2" "$9" "$10}'
  cmd = "cat /proc/net/dev |grep wlan0 |cut -d':' -f 2| awk '#{p}'"
  out = %x[#{cmd}]
  return out.split()
end

def getdate()
  cmd = "date | cut -d' ' -f 1-3"
  out = %x[#{cmd}]
  return out.to_s
end

def gettime()
  cmd = "date | cut -d' ' -f 4"
  out = %x[#{cmd}]
  return out.to_s
end

def keepdata(time)

end
