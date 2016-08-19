Facter.add('pagesize') do
  confine :kernel => 'Linux'
  setcode do
    binary = Facter::Core::Execution.exec('/usr/bin/which getconf')
    if binary
         Facter::Core::Execution.exec("#{binary} PAGESIZE")
    else
      return nil
    end
  end
end
