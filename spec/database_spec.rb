require 'spec_helper'

describe Database do

  let :testdb do

    class TestDB < Database
      url 'ftp://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz'
    end

    return TestDB
  end

  it 'should provide a DSL for defining bioinformatics databases' do
    testdb.my_url.should_not be_nil
  end

end
