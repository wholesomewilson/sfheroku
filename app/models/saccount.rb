class Saccount < SalesforceModel
  self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.account'
end
