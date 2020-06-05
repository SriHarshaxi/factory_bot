describe "an instance generated by a factory named a camel case string " do
  before do
    define_model("UserModel")

    FactoryBot.define do
      factory "UserModel", class: UserModel
    end
  end

  it "registers the UserModel factory" do
    expect(FactoryBot::Internal.factory_by_name("UserModel"))
      .to be_a(FactoryBot::Factory)
  end
end
