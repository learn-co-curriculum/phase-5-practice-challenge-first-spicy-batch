def is_spicy_batch(batch)
  batch[:spicy] === true ? true : false
end

test_batch = {"batch_no": 1, "spicy": true}

is_spicy_batch(test_batch)