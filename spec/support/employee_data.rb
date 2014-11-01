def employee_data
  {
    people: {
      1 => {
        company_id: 42,
        first_name: 'Martha',
        last_name: 'Berner',
        email: 'martha@galvanize.it'
      },
      22 => {
        company_id: 100,
        first_name: 'John',
        last_name: 'Foley',
        email: 'john@gschool.it'
      },
      8 => {
        company_id: 42,
        first_name: 'Kane',
        last_name: 'Baccigalupi',
        email: 'kane@galvanize.it'
      }
    },
    companies: [
      {
        id: 42,
        name: 'Galvanize, Inc.'
      },
      {
        id: 100,
        name: 'Pivotal Labs'
      }
    ]
  }
end
