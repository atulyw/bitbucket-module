owner      = ""
stage_name = "BPT"
common_vars = [
  {
    name    = "ENV"
    value   = "BPT"
    secured = false
  },
  {
    name    = "AWS_ACCESS_KEY_ID"
    value   = "AWS_ACCESS_KEY_ID"
    secured = true
  }
]

unique_vars = {
  cbz-dds-service-greamio = [
    {
      name    = "rama"
      value   = "goma"
      secured = false
    },
    {
      name    = "abc"
      value   = "xyz"
      secured = true
    }
  ]
  cbz-dds-mf-greamio = [
    {
      name    = "xa"
      value   = "ua"
      secured = false
    },
    {
      name    = "la"
      value   = "ba"
      secured = true
    }
  ]
}