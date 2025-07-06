Feature: Microsoft Search

  Scenario: 1.1 - Happy Path: Search on Microsoft
    Given I navigate to "https://www.microsoft.com/en-ca/"
    When I click the search icon on microsoft.com
    And I type "azure documentation" on microsoft.com
    And I press enter
    Then I should see "Azure documentation | Microsoft Learn"
    When I click "Azure documentation | Microsoft Learn"
    Then I should see "Azure documentation"
    When I click the search icon on learn.microsoft.com
    And I type "mcp servers" on learn.microsoft.com
    And I press enter
    Then I should see "Azure developer documentation"
    When I click "Azure developer documentation"
    Then I should see "Azure developer documentation"
    When I click the search icon on learn.microsoft.com
    When I press enter
    Then I should see "Search all across Microsoft Learn"
    And I type "test this search bar" on all microsoft learn
    And I press enter
    Then I should see 'results for "test this search bar"'
    Then I close browser

  Scenario: 2.1 - Edge Case: Search with wildcards (e.g. * or &)
    Given I navigate to "https://www.microsoft.com/en-ca/"
    When I click the search icon on microsoft.com
    And I type "Q&A*" on microsoft.com
    And I press enter
    Then I should see "Q&A in Microsoft Teams - Microsoft Support"
    When I click "Q&A in Microsoft Teams - Microsoft Support"
    Then I should see "Q&A in Microsoft Teams"
    Then I close browser

  Scenario: 2.2.1 - Edge Case: Internationalization - Search with French characters (e.g. é)
    Given I navigate to "https://www.microsoft.com/en-ca/"
    When I click the search icon on microsoft.com
    And I type "Tréma" on microsoft.com
    And I press enter
    Then I should see 'Tréma'
    Then I close browser

  Scenario: 2.2.2 -Edge Case: Internationalization - Search with non-Latin characters (e.g. Chinese)
    Given I navigate to "https://www.microsoft.com/en-ca/"
    When I click the search icon on microsoft.com
    And I type "你好" on microsoft.com
    And I press enter
    Then I should see '你好'
    Then I close browser

  Scenario: 2.3 -Edge Case: Boundary - Search with a very long string
    Given I navigate to "https://www.microsoft.com/en-ca/"
    When I click the search icon on microsoft.com
    And I type "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz" on microsoft.com
    And I press enter
    Then I should see 'We are sorry, the page you requested cannot be found.'
    Then I close browser
