require 'spec_helper'

terraform_bin_dir = "/usr/local/terraform/bin"

describe file("#{terraform_bin_dir}") do
  it { should be_directory }
  it { should be_mode 755 }
end

describe file("#{terraform_bin_dir}/terraform") do
  it { should be_file }
  it { should be_mode 755 }
end
