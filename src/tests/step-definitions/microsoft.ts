import { Page, Browser, chromium, expect } from "@playwright/test";
import { Given, When, Then } from "@cucumber/cucumber";

var browser: Browser;
var page: Page;

Given("I navigate to {string}", async (url: string) => {
  browser = await chromium.launch({ headless: false });
  page = await browser.newPage();
  await page.goto(url);
});

When("I click the search icon on microsoft.com", async () => {
  await page.locator("#search").click();
});

When("I click the search icon on learn.microsoft.com", async () => {
  await page.locator("button[data-test-id='site-header-search-open']").click();
});

Then("I should see {string}", async (text: string) => {
  await expect(page.getByText(text).first()).toBeVisible();
});

When("I type {string} on microsoft.com", async (searchText: string) => {
  await page.locator("input[placeholder='Search Microsoft.com']").fill(searchText);
});

When("I type {string} on learn.microsoft.com", async (searchText: string) => {
  await page.locator("#site-header-search-autocomplete-input").fill(searchText);
});

When("I type {string} on all microsoft learn", async (searchText: string) => {
  await page.locator("#facet-search-input").fill(searchText);
});

When("I press enter", async () => {
  await page.keyboard.press("Enter");
});

When("I click {string}", async (linkText: string) => {
  await page.getByText(linkText).first().click();
});

Then("I close browser", async () => {
  await browser.close();
});
