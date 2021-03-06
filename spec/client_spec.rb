require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe IdentityApiClient::Client do
  let(:options) { { :host => 'foo.bar.com', :api_token => 'abc123' }}
  subject { described_class.new(options) }

  it 'should respond to entities' do
    expect(subject).to respond_to(:member)
    expect(subject).to respond_to(:mailings)
    expect(subject).to respond_to(:mailing)
    expect(subject).to respond_to(:searches)
    expect(subject).to respond_to(:search)
  end

  context 'setup options ' do
    let(:config) { subject.connection.configuration  }

    it 'should initialize the options' do
      expect(config.host).to eq 'foo.bar.com'
      expect(config.options[:api_token]).to eq 'abc123'
    end
  end
end
