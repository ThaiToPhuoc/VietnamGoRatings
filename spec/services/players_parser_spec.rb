require 'rails_helper'
RSpec.describe PlayersParser do
  describe "#call" do
    subject {PlayersParser.new.call file.read}
    let(:file) {file_fixture("players.xlsx")}
    it do
      expect(subject[0][:name]).to eq("Nguyễn Việt Hải")
    end
  end
end
