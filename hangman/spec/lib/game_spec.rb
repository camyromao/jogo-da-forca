require "rails_helper"

RSpec.describe Game do
    describe "#won" do
        it "returns true if all letters are guessed" do
            g = Game.new()
            ["c", "a", "m", "y", "l"].each { |l| g.guess(l) }
            expect(g.won?).to eq true
        end
        it "returns false if all letters are not guessed" do
            g = Game.new()
            ["c", "a", "m"].each { |l| g.guess(l) }
            expect(g.won?).to eq false
        end
    end
    describe "#game_over" do
        it "returns true if chances are over" do
            g = Game.new()
            ["q", "w", "e", "t", "g"].each { |l| g.guess(l) }
            expect(g.game_over?).to eq true
        end

        it "returns false if chances are not over" do
            g = Game.new()
            ["c", "a", "m", "y", "l"].each { |l| g.guess(l) }
            expect(g.game_over?).to eq false
        end
    end
    end
end