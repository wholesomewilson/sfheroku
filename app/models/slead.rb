class Slead < SalesforceModel
  self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.lead'
end
