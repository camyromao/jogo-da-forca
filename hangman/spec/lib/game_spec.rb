require "rails_helper"

RSpec.describe Game do
    describe "#won" do
        it "returns true if all letters are guessed" do
            g = Game.new("camyla")
            ["c", "a", "m", "y", "l"].each { |l| g.guess(l) }
            expect(g.won?).to eq true
        end

        it "returns false if all letters are not guessed" do
            g = Game.new("camyla")
            ["c", "a", "m"].each { |l| g.guess(l) }
            expect(g.won?).to eq false
        end
    end

    describe "#over?" do
        it "returns true if chances are over" do
            g = Game.new("camyla")
            ["q", "w", "e", "t", "g"].each { |l| g.guess(l) }
            expect(g.over?).to eq true
        end

        it "returns false if chances are not over" do
            g = Game.new("camyla")
            ["c", "a", "m", "y", "l"].each { |l| g.guess(l) }
            expect(g.over?).to eq false
        end
    end

    describe "#reveal_word" do
        it "returns word with letters guessed" do
            g = Game.new("camyla")
            ["c", "a"].each { |l| g.guess(l) }
            expect(g.reveal_word).to eq "c a _ _ _ a"
        end

        it "returns word missing all letters" do
            g = Game.new("camyla")
            expect(g.reveal_word).to eq "_ _ _ _ _ _"
        end

        it "returns word with all letters guessed" do
            g = Game.new("camyla")
            ["c", "a", "m", "y", "l"].each { |l| g.guess(l) }
            expect(g.reveal_word).to eq "c a m y l a"
        end
    end

end