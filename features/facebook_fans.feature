Feature: Facebook Fans
  In order analize campaigns
  A client
  Should be able to watch Facebook Fans Graph

    Scenario: Client has no data
      Given Client has no data
      When going to facebook data page
      Then he should be able to see "new facebook datum"

    Scenario: The client has campaings
      Given Client enters new campaign
      When going to facebook data page
      Then should see "Fans"
      

