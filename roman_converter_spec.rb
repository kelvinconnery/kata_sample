require_relative 'roman_converter'

describe RomanConverter do

  let(:converter) { RomanConverter.new }

  it 'makes sense' do
    expect(converter).not_to be_nil
    expect(converter.convert(1)).to eq('I')
    expect(converter.convert(2)).to eq('II')
    expect(converter.convert(3)).to eq('III')
    expect(converter.convert(4)).to eq('IV')
    expect(converter.convert(5)).to eq('V')
    expect(converter.convert(6)).to eq('VI')
    expect(converter.convert(7)).to eq('VII')
    expect(converter.convert(8)).to eq('VIII')
    expect(converter.convert(9)).to eq('IX')
    expect(converter.convert(10)).to eq('X')
    expect(converter.convert(11)).to eq('XI')
    expect(converter.convert(12)).to eq('XII')
    expect(converter.convert(13)).to eq('XIII')
    expect(converter.convert(14)).to eq('XIV')
    expect(converter.convert(15)).to eq('XV')
    expect(converter.convert(16)).to eq('XVI')
    expect(converter.convert(17)).to eq('XVII')
    expect(converter.convert(18)).to eq('XVIII')
    expect(converter.convert(19)).to eq('XIX')
    expect(converter.convert(20)).to eq('XX')
    expect(converter.convert(21)).to eq('XXI')
    expect(converter.convert(24)).to eq('XXIV')
    expect(converter.convert(29)).to eq('XXIX')
    expect(converter.convert(39)).to eq('XXXIX')
    expect(converter.convert(40)).to eq('XL')
    expect(converter.convert(41)).to eq('XLI')
    expect(converter.convert(45)).to eq('XLV')
    expect(converter.convert(49)).to eq('XLIX')
    expect(converter.convert(51)).to eq('LI')
    expect(converter.convert(89)).to eq('LXXXIX')
    expect(converter.convert(90)).to eq('XC')
    expect(converter.convert(99)).to eq('XCIX')
    expect(converter.convert(100)).to eq('C')
    expect(converter.convert(101)).to eq('CI')
    expect(converter.convert(104)).to eq('CIV')
    expect(converter.convert(109)).to eq('CIX')
    expect(converter.convert(300)).to eq('CCC')    
    expect(converter.convert(400)).to eq('CD')
    expect(converter.convert(500)).to eq('D')
    expect(converter.convert(501)).to eq('DI')
    expect(converter.convert(530)).to eq('DXXX')    
    expect(converter.convert(550)).to eq('DL')
    expect(converter.convert(707)).to eq('DCCVII')
    expect(converter.convert(890)).to eq('DCCCXC')
    expect(converter.convert(900)).to eq('CM')
    expect(converter.convert(1500)).to eq('MD')
    expect(converter.convert(1800)).to eq('MDCCC')
    expect(converter.convert(1904)).to eq('MCMIV')
    expect(converter.convert(1954)).to eq('MCMLIV')    
    expect(converter.convert(2008)).to eq('MMVIII')








  end


end