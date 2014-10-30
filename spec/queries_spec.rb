require 'spec_helper'

describe 'queries on employee data' do
  let(:data) { employee_data } # defined in support file: support/employee_data.rb

  describe 'employee names' do
    it "can report all their first names" do
      expect(first_names(data)).to be == ['Martha', 'John', 'Kane']
    end

    xit "can report their last names" do
      expect(last_names(data)).to be == ['Berner', 'Foley', 'Baccigalupi']
    end

    xit "can report their full names" do
      expect(full_names(data)).to be == ['Martha Berner', 'John Foley', 'Kane Baccigalupi']
    end

    xit "can report their names last name first with a comma" do
      expect(last_name_first_names(data)).to be == [
        "Berner, Martha", 'Foley, John', 'Baccigalupi, Kane'
      ]
    end
  end

  xdescribe 'company information' do
    it "gets a list of company names" do
      expect(company_names(data)).to be == ["Galvanize, Inc.", 'Pivotal Labs']
    end

    it "returns a list of people per company name" do
      expect(employees(data, "Galvinize, Inc")).to be == [
        {
          company_id: 42,
          first_name: 'Martha',
          last_name: 'Berner',
          email: 'martha@galvanize.it'
        },
        {
          company_id: 42,
          first_name: 'Kane',
          last_name: 'Baccigalupi',
          email: 'kane@galvanize.it'
        }
      ]
    end

    it "returns names of people per company id" do
      expect(employee_names(data, 42)).to be == [
        "Martha Berner", "Kane Baccigalupi"
      ]
    end

    it "returns employee ids when given a company id" do
      expect(employee_ids(data, 42)).to be == [
        1, 8
      ]
    end
  end
end
