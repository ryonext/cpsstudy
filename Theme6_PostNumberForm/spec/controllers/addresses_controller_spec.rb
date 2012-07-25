#encoding: utf-8
require 'spec_helper'

describe AddressesController do


  describe "POST 'create'" do
    context 'ハイフンがない７桁の半角数字' do
      it 'ハイフンがない７桁の半角数字が返ってくる' do
        post 'create', :number => '1048222'
        assigns[:number].should == '1048222'
        post 'create', :number => '2228530'
        assigns[:number].should == '2228530'
      end
    end
    context 'ハイフンがある7桁の半角数字' do
      it 'ハイフンがない7桁の半角数字が返ってくる' do
        post 'create', :number => '104-8222'
        assigns[:number].should == '1048222'
      end
    end
    context '全角で7桁(；´Д｀)' do
      it 'ハイフンがない7桁の半角文字返せばいいんでしょ、もう！' do
        post 'create', :number => '１０４８２２２'
        assigns[:number].should == '1048222'
      end
    end
  end

end
