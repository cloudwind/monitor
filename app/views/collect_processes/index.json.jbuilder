json.array!(@collect_processes) do |collect_process|
  json.extract! collect_process, :id, :Pid, :User, :Cpu, :Mem, :Command
  json.url collect_process_url(collect_process, format: :json)
end
