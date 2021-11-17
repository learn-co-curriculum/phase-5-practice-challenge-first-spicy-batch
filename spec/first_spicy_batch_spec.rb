require 'timeout'
require_relative '../lib/first_spicy_batch'

describe '#first_spicy_batch' do
  it 'returns 4 when the first spicy batch is 4' do
    def is_spicy_batch(batch)
      batch >= 4
    end
    expect(first_spicy_batch(5)).to eq(4)
    expect(first_spicy_batch(6)).to eq(4)
    expect(first_spicy_batch(7)).to eq(4)
    expect(first_spicy_batch(8)).to eq(4)
  end

  it 'returns 8 when the first spicy batch is 8' do
    def is_spicy_batch(batch)
      batch >= 8
    end
    expect(first_spicy_batch(8)).to eq(8)
    expect(first_spicy_batch(9)).to eq(8)
    expect(first_spicy_batch(10)).to eq(8)
    expect(first_spicy_batch(11)).to eq(8)
    expect(first_spicy_batch(12)).to eq(8)
  end

  it 'returns 1 when the first spicy batch is 1' do
    def is_spicy_batch(batch)
      batch >= 1
    end
    expect(first_spicy_batch(1)).to eq(1)
    expect(first_spicy_batch(4)).to eq(1)
    expect(first_spicy_batch(10)).to eq(1)
  end

  it 'returns 100 when the first spicy batch is 100' do
    def is_spicy_batch(batch)
      batch >= 100
    end
    expect(first_spicy_batch(100)).to eq(100)
    expect(first_spicy_batch(8000)).to eq(100)
  end

  it 'handles large inputs' do
    # This is a very large number
    FIXNUM_MAX = (2**(0.size * 8 - 2) - 1)

    def is_spicy_batch(batch)
      batch >= FIXNUM_MAX
    end

    # This checks that the first_spicy_batch method completes execution in 5 seconds or less
    expect { Timeout.timeout(5) { first_spicy_batch(FIXNUM_MAX) } }.not_to(
      raise_error(Timeout::Error),
      'Time limit exceeded',
    )

    expect(first_spicy_batch(FIXNUM_MAX)).to eq(FIXNUM_MAX)
  end
end
