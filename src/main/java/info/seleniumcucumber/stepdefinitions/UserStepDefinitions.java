package info.seleniumcucumber.stepdefinitions;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import env.DriverUtil;
import info.seleniumcucumber.methods.BaseTest;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.List;

public class UserStepDefinitions implements BaseTest {
    protected WebDriver driver = DriverUtil.getDefaultDriver();
    protected static String firstCelebBornedToday;

    /***
     * Todo:
     * @param arg1
     */
    @When("I search \"([^\"]*)\" ")
    public void searchandGet(String arg1){
        //Todo: Abstract these above lines into one method
        //PredefinedStepDefinitions.enter_text();
        /*Then I enter "Spiderman Homecoming" into input field having class "imdb-header-search__input"
        And I click on element having css ".react-autosuggest__suggestion--first > a:nth-child(1)"
        And I wait for 5 sec*/
    }
    /***
     * Todo:
     */
    @Then("^I save people names who born today$")
    public void iSavePeopleNamesWhoBornToday() {
        List<WebElement> bornToday = driver.findElements((By.cssSelector("div.born-today-name")));
        //for each every single node, and getText if needed.

        //Search for the *first* “Born Today” celebs.
        firstCelebBornedToday = bornToday.get(0).getText();
        //System.out.println(firstCelebBornedToday);
    }

    // enter text into input field steps
    @Then("^I enter saved text into input field having (.+) \"([^\"]*)\"$")
    public void enter_text( String type,String accessName) throws Exception
    {
        miscmethodObj.validateLocator(type);
        inputObj.enterText(type, firstCelebBornedToday, accessName);
    }

}
