> [!WARNING]
> **This gem is deprecated and no longer maintained.**
> Please migrate to the new KOMOJU Ruby SDK: [komoju-sdk](https://github.com/komoju/komoju-ruby-sdk)

---

# Komoju

[Komoju](https://komoju.com) API Ruby Bindings

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'komoju'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install komoju

## Usage

```ruby
client = Komoju.connect("api-secret-key")
client.payments.show("55404024b7b0dd6ec490158925")

payment_details = {
  type: "konbini",
  store: "lawson",
  email: "user@example.com",
  phone: "08011111111"
}

client.payments.create(amount: 100, currency: "JPY", external_order_num: "123", payment_details: payment_details)
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/komoju/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
