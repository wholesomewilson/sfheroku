class Saccount < SalesforceModel
  self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.account'

  attr_protected :CreatedDate, :SystemModstamp, :LastModifiedDate
end
