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

  it 'is reliable' do
    File.foreach('/usr/share/dict/words') do |word|
       @hash.set(word, word.reverse)
    end

    File.foreach('/usr/share/dict/words') do |word|
       @hash.get(word).must_equal word.reverse
    end
  end
end
