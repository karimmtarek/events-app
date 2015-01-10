require "rails_helper"

describe "Viewing the list of events" do
  it "shows the event" do
    event1 = Event.create(name: "BugSmash",
                          location: "Denver",
                          price: 10.00,
                          description: "A fun evening of bug smashing.",
                          starts_at:10.days.from_now)

    event2 = Event.create(name: "Hackathon",
                          location: "Austin",
                          price: 15.00,
                          description: "A fun evening of bug hacking some shit.",
                          starts_at:15.days.from_now)

    event3 = Event.create(name: "Kata Camp",
                          location: "Dallas",
                          price: 75.00,
                          description: "Practice your craft finishing a kata at a time.",
                          starts_at:15.days.from_now)

    visit events_url
    # binding.pry
    expect(page).to have_text("3 Events")
    expect(page).to have_text(event1.name)
    expect(page).to have_text(event2.name)
    expect(page).to have_text(event3.name)

    expect(page).to have_text(event1.location)
    expect(page).to have_text(event1.description[1..10])
    expect(page).to have_text(event1.starts_at)
    expect(page).to have_text("$10.00")
  end
end