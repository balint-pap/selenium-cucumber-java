package stepDefintions;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import info.seleniumcucumber.stepdefinitions.PredefinedStepDefinitions;

public class Hooks {
	@Before
	public void beforeEachScenario(Scenario scenario) {
		//
	}
	@After("@NegativeTest")
	public void beforeScenario(Scenario scenario) {
//		System.out.println("In hooks");
//		System.out.println(scenario.getName());
//		System.out.println(scenario.getStatus());
	}
}
