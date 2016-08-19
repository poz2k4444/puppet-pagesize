#!/usr/bien/env rspec

require 'spec_helper'

describe "pagesize", :type => :fact do
  before { Facter.clear }
  after { Facter.clear }

  context "linux" do
    kernel = Facter.fact(:kernel).value
    arch = Facter.fact(:architecture).value
    if kernel == 'Linux' and arch == 'amd64'
      it "should return 4096" do
        expect(Facter.fact(:pagesize).value).to eq('4096')
      end
    end
  end
end
