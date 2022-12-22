package starter.stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.thucydides.core.annotations.Steps;
import starter.Projects.AddFamily;

public class AddFamilyStep {
    @Steps
    AddFamily addFamily;
    @Given("I set url")
    public void iSetUrl() {
        addFamily.setUrlAddFamily();
    }

    @When("I request get detail family")
    public void iRequestGetDetailFamily() {
        addFamily.reqGetFamily();
    }

    @Then("I will get message 200")
    public void iWillGetMessage200() {
        addFamily.message200();
    }
}
