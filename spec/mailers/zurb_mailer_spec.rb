require "spec_helper"

describe ZurbMailer do

  context "new_zurb" do

    let(:mail) { ZurbMailer.new_zurb }

    it 'renders the headers' do
      mail.subject.should eq('New Zurb, All Hail the Glory of the Zurb Empire!')
      mail.to.should eq("to@example.org")
      mail.from.should eq("from@example.com")
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end

  end

end
