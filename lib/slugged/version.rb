module Slugged
  module Version
    MAJOR  = 1
    MINOR  = 1
    PATCH  = 0
    STRING = [MAJOR, MINOR, PATCH].join(".")
  end
  
  VERSION = Version::STRING
end
