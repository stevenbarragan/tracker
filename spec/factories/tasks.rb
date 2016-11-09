FactoryGirl.define do
  factory :task do
    project
    name "MyString"
    description "MyText"
    state 0
  end
end
