FactoryBot.define do
  factory :message do
    author { 'Me' }
    sequence(:content) { |i| "Content #{i}" }
  end
end
