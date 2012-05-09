Feature: Facebook Fans
  In order analize campaigns
  A client
  Should be able to watch Facebook Fans Graph

    Scenario: Client has no data
      Given no campaign exist for client 2
      When I go to facebook data page
      Then I should see "new facebook datum"

    Scenario: Client has campaings
      Given Client enters new campaign
      When I go to facebook data page
      Then I should see "Fans"
      

