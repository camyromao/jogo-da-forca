require "rails_helper"

RSpec.describe Game do
    describe "#won" do
        it "returns true if all letters are guessed" do
            g = Game.new()
            ["c", "a", "m", "y", "l"].each { |l| g.guess(l) }
            expect(g.won?).to eq true
        end
    end
end