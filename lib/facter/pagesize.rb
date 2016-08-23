Facter.add('pagesize') do
  confine :kernel => 'Linux'
  setcode "getconf PAGESIZE"
end
