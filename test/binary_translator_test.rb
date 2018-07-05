require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_translator'

class BinaryTranslatorTest < Minitest::Test 

  def test_it_exists
    bt = BinaryTranslator.new 
    
    assert_instance_of BinaryTranslator, bt
  end 
  
  def test_it_can_translate_a_letter
    bt = BinaryTranslator.new
    
    assert_equal '000001', bt.translate('a')
  end 
  
  def test_it_can_translate_another_letter
    bt = BinaryTranslator.new
    
    assert_equal '011010', bt.translate('z')
  end 
  
  def test_it_can_translate_a_word
    bt = BinaryTranslator.new
    
    assert_equal "010100010101010010001001001110000111", bt.translate('turing')
  end
  
  def test_it_can_translate_upper_case_letter
    bt = BinaryTranslator.new 
  
    assert_equal '000001', bt.translate('A')
  end 
  
  def test_it_can_translate_a_space
    bt = BinaryTranslator.new 
    
    assert_equal '00000', bt.translate('')
  end 
  
  def test_it_can_translate_symbols
    bt = BinaryTranslator.new 
    
    assert_equal '', bt.translate('!')
  end 

end