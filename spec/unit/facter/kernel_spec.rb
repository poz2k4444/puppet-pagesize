#!/usr/bien/env rspec

require 'spec_helper'

describe "pagesize", :type => :fact do

  context "linux" do
    pagesize = Facter::Core::Execution.exec('getconf PAGESIZE')

    it "should return pagesize" do
      expect(Facter.fact(:pagesize).value).to eq(pagesize)
    end

  end
end
