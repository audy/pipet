require 'spec_helper'

describe Database do

  let :test_db do
    class TestDB < Database
      url 'hello world!'
      name 'hello world!'
      md5 '6f5902ac237024bdd0c176cb93063dc4'
    end
    TestDB
  end

  it 'should provide a DSL for defining bioinformatics databases' do
    test_db.should_not be_nil
  end

  it '#validate should validate attributes' do
    test_db.validate.should_not be_false
  end

end
