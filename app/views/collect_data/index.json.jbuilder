json.array!(@collect_data) do |collect_datum|
  json.extract! collect_datum, :id, :BandwidthTran, :BandwidthRec, :BandwidthTranP, :BandwidthRecP, :CPUTotal, :CPUUser, :CPUSys, :DiskUsed, :DiskFree, :LoadAVG, :MemTotal, :MemFree
  json.url collect_datum_url(collect_datum, format: :json)
end
