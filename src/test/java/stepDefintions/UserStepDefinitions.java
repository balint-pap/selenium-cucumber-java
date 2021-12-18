package stepDefintions;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import env.DriverUtil;
import info.seleniumcucumber.methods.BaseTest;
import org.openqa.selenium.WebDriver;

import static org.junit.Assert.fail;

public class UserStepDefinitions implements BaseTest {
    protected WebDriver driver = DriverUtil.getDefaultDriver();


    @When("I search \"([^\"]*)\" ")
    public void searchandGet(String arg1){
        //PredefinedStepDefinitions.enter_text();
        /*Then I enter "Spiderman Homecoming" into input field having class "imdb-header-search__input"
        And I click on element having css ".react-autosuggest__suggestion--first > a:nth-child(1)"
        And I wait for 5 sec*/
    }
    /***
     *
     */
    @Then("^I save people names who born today$")
    public void iSavePeopleNamesWhoBornToday() {
        fail("not implemented yet");
    }
}
