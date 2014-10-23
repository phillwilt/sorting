require 'spec_helper'
require 'hash'
require 'pry'

describe 'hash' do
  before do
    @hash = Hash.new
  end

  it 'stores strings' do
    @hash.set('hello', 'olleh')
    @hash.set('hi', 'ih')
    @hash.get('hello').must_equal 'olleh'
    @hash.get('hi').must_equal 'ih'
  end

  it 'cannot find a string that has not been stored' do
    @hash.get('tacos').must_equal nil
  end

  it 'reports its load factor' do
    1024.times { |i| @hash.set(i.to_s, i.to_s.reverse) }
    @hash.load.must_be :>, 0
  end

  it 'expands when it hits its load factor' do
    5_000.times { |i| @hash.set(i.to_s, i.to_s.reverse) }
    @hash.get(5_000.to_s).must_equal 5_000.to_s.reverse
  end
end
