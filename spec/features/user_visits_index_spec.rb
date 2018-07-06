require 'rails_helper'

describe 'a visitor' do
  context 'visiting /astronauts' do
    it 'should see a list of all astronauts' do
      astro_1 = Astronaut.create(name: 'sdfa', age: 34, job: 'sdgds')
      astro_2 = Astronaut.create(name: 'sjhg', age: 36, job: 'nbv')

      visit '/astronauts'

      expect(page).to have_content(astro_1.name)
      expect(page).to have_content(astro_1.age)
      expect(page).to have_content(astro_1.job)
      expect(page).to have_content(astro_2.name)
      expect(page).to have_content(astro_2.name)
      expect(page).to have_content(astro_2.name)
    end

    it 'should see the average age of all astronauts' do
      astro_1 = Astronaut.create(name: 'sdfa', age: 1, job: 'sdgds')
      astro_2 = Astronaut.create(name: 'sjhg', age: 3, job: 'nbv')

      visit '/astronauts'

      expect(page).to have_content("Average Age: #{Astronaut.average_age}")
    end
  end
end
=begin

```
As a visitor,
When I visit '/astronauts'
I see the average age of all astronauts.
(e.g. "Average Age: 34")
```

```
As a visitor,
When I visit '/astronauts'
I see a list of the space missions' in alphabetical order for each astronaut.
(e.g "Apollo 13"
     "Capricorn 4"
     "Gemini 7")
```

```
As a visitor,
When I visit '/astronauts'
I see the total time in space for each astronaut.
(e.g. "Total Time in Space: 760 days")
=end

